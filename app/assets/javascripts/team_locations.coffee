# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  if $('#map').size() > 0
    handler = Gmaps.build('Google')
    handler.buildMap {
      provider: null
      internal: id: 'map'
    }, ->
      getMarkers(handler) 
      return

getMarkers = (handler) ->
  $.ajax
    url: "/team_locations.json#{window.location.search}"
    type: 'GET'
    success: (result) ->
      markers = handler.addMarkers(result)
      handler.bounds.extendWith markers
      handler.fitMapToBounds()
      return
    error: (result) ->
      errorNotice 'Failed to load map.'
      return
  return
 
