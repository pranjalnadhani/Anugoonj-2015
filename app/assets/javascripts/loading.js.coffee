$(document).on 'page:fetch', ->
  $('#loading').fadeIn 'slow'

$(document).on 'page:receive', ->
  $('#loading').fadeOut 'slow'
