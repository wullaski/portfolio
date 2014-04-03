$(document).ready ->
  $background = $('div[data-type="background"]')
  $window = $(window)

  windowHeight = $window.height()
  backgroundHeight = 2046

  bkgdScrollDistance = backgroundHeight - windowHeight
  documentScrollDistance =  $(document).height() - windowHeight

  BDRatio = 1 - (bkgdScrollDistance/documentScrollDistance)

  $window.scroll ->
    scrollPosition = $window.scrollTop()
    yPos = scrollPosition * BDRatio
    coords = '0 '+ yPos + 'px';
    $background.css({ backgroundPosition: coords });

#background image is a percentage of the height of the document
#top position is the percentage of the scrollposition - the scrollposition