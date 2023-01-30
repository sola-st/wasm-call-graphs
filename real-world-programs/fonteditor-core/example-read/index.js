const {Font, woff2} = require('fonteditor-core');
const fs = require('fs')

woff2.init().then(() => {
    // read woff2
    const font =  Font.create(Font.buffer, {
      type: 'woff2'
    });
    const fontObject = font.get();
    console.log(Object.keys(fontObject));
});
