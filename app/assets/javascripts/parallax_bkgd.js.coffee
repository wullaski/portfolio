$(document).ready ->
  $background = $('div[data-type="background"]')
  $window = $(window)
  backgroundHeight = 1134


  if $('html').hasClass('no-touch') #modernizr tests for touch and appends this class
    $background.css('background-attachment', 'scroll')
    console.log "hello"
    setTimeout ( ->
      PositionBackground($background, backgroundHeight, $window)
    ), 100

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
    $background.css({backgroundPosition: "0 bottom"})
  else
    #make sure scrolling is enabled
    $window.scroll ->
      scrollPosition = $window.scrollTop()
      yPos = scrollPosition * BDRatio
      coords = '0 '+ yPos + 'px'
      $background.css({ backgroundPosition: coords })
  
#background image is a percentage of the height of the document
#top position is the percentage of the scrollposition - the scrollposition