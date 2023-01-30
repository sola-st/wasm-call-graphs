global.Wasabi = require("./node_modules/vscode-oniguruma/release/onig.wasabi.js");
let analysis = require("./../../analysis.js");

let filename = `${__filename}`
filename = filename.split("/").slice(-3)
global.lib_name = filename[0]
global.test_name = filename[1]

const shiki = require('shiki')

const highlighter = shiki.getHighlighter({
  theme: 'nord',
  langs: ['javascript', 'python']
})

const code = `console.log("Here is your code.");`

highlighter.then((highlighter) => {
    // This will return an array of tokens for the provided code.
    // A token represents a single part of the code, for example a keyword, a string, a comment, etc.
    const tokens = highlighter.codeToThemedTokens(code, 'javascript')

    // This will return an HTML string that represents the provided code.
    const html = shiki.renderToHtml(tokens, 
        {
            fg: highlighter.getForegroundColor('nord'), // Set a specific foreground color.
            bg: highlighter.getBackgroundColor('nord'), // Set a specific background color.
            // Specified elements override the default elements.
            elements: {
              pre({ className, style, children }) {
                return `${children}`
              },
              code({ className, style, children }) {
                return `${children}`
              }
            }
          })

    console.log(html)
    require('./../../collect-data.js')
}) 


