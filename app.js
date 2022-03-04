const express = require('express')
const fs = require('fs')
const formidable = require('formidable')
const { sketch } = require('./core')
console.log('sketch', sketch)
const app = new express()

app.get('/', async (req, res) => {
  // const file = await fs.readFileSync('./index.html')
  res.sendfile('./index.html')
})
app.post('/upload', (req, res) => {
  console.log('req', req)
  // const form = formidable()
  let form = new formidable.IncomingForm();
  form.parse(req, (err, fields, file) => {
    console.log('first', file)
    const { file: f } = file
    console.log(f.name)
    sketch(f)
  })
  // res.sendfile("./index.html")
})
app.listen('3000')