$(document).ready ->
  $background = $('div[data-type="background"]')
  $window = $(window)
  backgroundHeight = 1134

  PositionBackground($background, backgroundHeight, $window)

  $(window).resize(()->
    console.log "resize"
    PositionBackground($background, backgroundHeight, $window)
  )

PositionBackground = ($background, backgroundHeight, $window)->
  documentHeight = $(document).height()
  windowHeight = $window.height()

  bkgdScrollDistance = backgroundHeight - windowHeight
  documentScrollDistance =  documentHeight - windowHeight
  BDRatio = 1 - (bkgdScrollDistance/documentScrollDistance)

  if BDRatio < 0
    yPos = (backgroundHeight - documentHeight) / -1
    console.log yPos
    coords = '0 '+ yPos + 'px'
    $background.css({backgroundPosition: coords})
  else

    $window.scroll ->
      scrollPosition = $window.scrollTop()
      yPos = scrollPosition * BDRatio
      coords = '0 '+ yPos + 'px'
      $background.css({ backgroundPosition: coords })

#background image is a percentage of the height of the document
#top position is the percentage of the scrollposition - the scrollposition