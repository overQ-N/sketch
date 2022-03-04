const { readAsDataURL } = require("promise-file-reader")
const getPixels = require('get-pixels')
const { DoGFilter, XDoGFilter, convertToGrayscale } = require('./xdog')

const settings = {
  XDoG: true,
  epsilon: 20,
  gpuAccelerated: true,
  phi: 0.1,
  sharpen: 35,
  sigmaOne: 1,
  sigmaTwo: 1.8,
  threshold: 0.4,
}
var initial = {
  pixels: null,
  url: null,
  width: null,
  height: null,
  originalWidth: null,
  originalHeight: null,
  sketched: false,
  rerendering: false,
  options: null,
  filename: null,
  loading: false
}
/**
 * @param {image} File
 */

const reader = new FileReader()
const loadImage = (image) => {
  const filename = image.name
  return new Promise((resolve, reject) => {
    console.log('image', image)
    console.log(reader.readAsDataURL(image))
    return
    readAsDataURL(image).then(dataUrl => {
      getPixels(dataUrl, (err, colorPixels) => {
        const [originalWidth, originalHeight, ...rest] = colorPixels.shape
        let [width, height] = [originalWidth, originalHeight]
        const scaleFactor = Math.min(470 / width, 600 / height)

        if (scaleFactor < 1) {
          width = originalWidth * scaleFactor
          height = originalHeight * scaleFactor
        }

        initial = { ...initial, url: dataUrl, width, height, originalHeight, originalWidth, filename }

        convertToGrayscale(colorPixels).then(pixels => {
          initial = { ...initial, pixels, rerendering: false, sketched: false, loading: false }
          resolve()
        })
      })
    })
  })
}
const sketchify = async (options) => {
  for (let key in options) {
    if (!['gpuAccelerated', 'XDoG'].includes(key)) {
      options[key] = parseFloat(options[key])
    }
  }
  const { pixels, originalWidth, originalHeight } = initial
  const filterFn = options.XDoG ? XDoGFilter : DoGFilter
  const url = await filterFn(pixels, options, [originalWidth, originalHeight])
  return url
}

module.exports = {
  sketch: async (image, options = settings) => {
    await loadImage(image)
    return await sketchify(options)
  }

}