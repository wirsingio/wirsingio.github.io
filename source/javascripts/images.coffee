class window.RandomImage
  constructor: (@selector) ->
    @numbers = [1..99]

  inject: ->
    images = document.querySelectorAll(@selector)
    for image in images
      image.src = @getNext()

  getNext: ->
    n = Math.floor(Math.random() * @numbers.length)
    number = @numbers.splice(n, 1)
    @makeUrl(number)

  makeUrl: (number) ->
    "http://api.randomuser.me/portraits/men/#{number}.jpg"
