const express = require('express')
const fs = require('fs')
const formidable = require('formidable')
const sketch = require('../src/index')
const path = require('path')
const app = new express()



app.get('/', async (req, res) => {
  // const file = await fs.readFileSync('./index.html')
  res.sendfile('./index.html')
})

app.post('/upload', (req, res) => {
  let form = new formidable.IncomingForm({ uploadDir: path.join(__dirname + '/upload'), keepExtensions: true });
  form.parse(req, async (err, fields, file) => {

    const { file: f } = file
    const filePath = path.join(__dirname + '/upload', f.newFilename)
    // const fileToBase64 = fs.readFileSync(path.join(__dirname, './upload', f.newFilename))
    // const dataAsUrl = 'data:image/jpeg;base64,' + fileToBase64.toString('base64')

    res.json(await sketch(filePath, {
      XDoG: true,
      epsilon: 20,
      gpuAccelerated: true,
      phi: 0.1,
      sharpen: 35,
      sigmaOne: 1,
      sigmaTwo: 1.5,
      threshold: 0.5,
    }))
    fs.unlinkSync(filePath)
  })
})
app.listen('3000')