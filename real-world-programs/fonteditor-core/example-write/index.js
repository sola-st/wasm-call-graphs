const {Font, woff2} = require('fonteditor-core');
const fs = require('fs')

woff2.init().then(() => {
    const font =  Font.create(Font.buffer, {
      type: 'woff2'
    });    

    // write woff2
    const buffer = font.write({type: 'woff2', deflate: null});
    fs.writeFileSync('font.woff', buffer);

});
