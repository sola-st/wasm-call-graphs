# docker context ls
# docker context use default

FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
	&& apt-get -y -q install sudo build-essential rsync wget zip unzip \
	&& apt-get -y install --no-install-recommends vim python3 pip git curl nodejs npm ocaml opam \
	&& apt-get -y install --no-install-recommends libgmp-dev libmpfr-dev pkg-config m4 wabt \
	&& apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN pip install prettytable
# we need node17
RUN curl -sL https://deb.nodesource.com/setup_17.x | bash -
RUN apt-get install -y nodejs

# Copy the wasm-call-graphs repo 
RUN mkdir -p /home/toughcall
COPY . /home/toughcall

# Wassail - Install from copied directory in tools/wassail
# I wish this worked but it does not and it seems to be some ridiculousness with opam versioning that I've now spent way too much time trying to solve. 
# Instead, tools/main.exe points to the wassail executable and we can run the evaluation with that 
# Only that doesn't work either because opam is garbage.
RUN opam init --auto-setup --disable-sandboxing --yes --bare
RUN opam switch create system ocaml-base-compiler.4.14.1
RUN eval $(opam env)

WORKDIR /home/toughcall/tools/wassail
RUN opam install --yes .; exit 0
RUN opam install --yes core_unix
RUN opam install --yes . 
RUN make 

WORKDIR /

#RUN opam install --yes core_unix wasm.2.0.0
#RUN opam install --yes home/toughcall/tools/wassail

# Twiggy - Install from copied directory in tools/twiggy 
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"
RUN cargo build --manifest-path=/home/toughcall/tools/twiggy/Cargo.toml --all --exclude twiggy-wasm-api

# MetaDCE - Install Binaryen 
RUN apt-get -y install --no-install-recommends binaryen 

# WAVM + LLVM - Install llvm-12 for llvm-dis-12 and llvm-as-12 and the WAVM compiler
RUN apt-get -y install --no-install-recommends llvm-12
RUN apt install /home/toughcall/tools/wavm-0.0.0-prerelease-linux.deb

CMD ["bash"]