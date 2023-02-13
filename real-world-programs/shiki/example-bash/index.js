const shiki = require('shiki')

shiki
  .getHighlighter({
    theme: 'nord'
  })
  .then(highlighter => {
    console.log(highlighter.codeToHtml(`console.log('shiki');`, { lang: 'js' }))
  })