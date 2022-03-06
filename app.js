const express = require('express')
const fs = require('fs')
const formidable = require('formidable')
const { sketch } = require('./core')
const path = require('path')
console.log('sketch', sketch)
const app = new express()

app.get('/', async (req, res) => {
  // const file = await fs.readFileSync('./index.html')
  res.sendfile('./index.html')
})
app.post('/upload', (req, res) => {
  // const form = formidable()
  let form = new formidable.IncomingForm({ uploadDir: path.join('./upload') });
  form.parse(req, async (err, fields, file) => {

    const { file: f } = file
    const fileToBase64 = fs.readFileSync(path.join(__dirname, './upload', f.newFilename))
    const dataAsUrl = 'data:image/jpeg;base64,' + fileToBase64.toString('base64')
    res.json(dataAsUrl)
    sketch(dataAsUrl, f.originalFilename)
  })
  // res.sendfile("./index.html")
})
app.listen('3000')