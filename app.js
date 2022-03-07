const express = require('express')
const fs = require('fs')
const formidable = require('formidable')
const { sketch } = require('./core')
const path = require('path')
const canvas = require('canvas')
const app = new express()
const Filter = require('node-image-filter');


var width = 64
var height = 64
var gl = require('gl')(width, height, { preserveDrawingBuffer: true })




// Canvas.prototype.getContext = function (contextType, contextAttributes) {
//   if (contextType === '2d') {
//     return oldGetContext.call(this, contextType, contextAttributes)
//   } else if (contextType in { 'webgl': true, 'webgl2': true, 'experimental-webgl': true }) {
//     return createContext(this.width || 1, this.height || 1, contextAttributes)
//   }
// }

global.document = {}

global.document.createElement = function (type) {
  if (type !== 'canvas') {
    return null
  }

  return canvas.createCanvas()
  // return gl
}

document = global.document


app.get('/', async (req, res) => {
  // const file = await fs.readFileSync('./index.html')
  res.sendfile('./index.html')
})


app.post('/upload', (req, res) => {
  // const form = formidable()
  let form = new formidable.IncomingForm({ uploadDir: path.join('./upload'), keepExtensions: true });
  form.parse(req, async (err, fields, file) => {

    const { file: f } = file
    const filePath = path.join(__dirname, './upload', f.newFilename)
    // const fileToBase64 = fs.readFileSync(path.join(__dirname, './upload', f.newFilename))
    // const dataAsUrl = 'data:image/jpeg;base64,' + fileToBase64.toString('base64')
    // res.json(dataAsUrl)
    Filter.render(filePath, Filter.preset.brightness, function (result) {
      console.log('result', result)
      result.data.pipe(fs.createWriteStream(`result.${result.type}`))
      res.send('111')
    })
    // await sketch(filePath)
    // fs.unlinkSync(filePath)
  })
  // res.sendfile("./index.html")
})
app.listen('3000')