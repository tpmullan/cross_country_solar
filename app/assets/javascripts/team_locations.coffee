# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
markers = null

$(document).ready ->
  if $('#map').size() > 0
    handler = Gmaps.build('Google')
    handler.buildMap {
      provider: null
      internal: id: 'map'
    }, ->
      handler.addKml url: "https://www.google.com/maps/d/kml?mid=1seLslbRQhesLqoAFoIlZkBTNC8w&forcekml=1&cid=mp&cv=LLS4f3GpivQ.en"
      getMarkers(handler)
      setTimeout (->
        zoomMap(handler)
      ), 500
      return
    
getMarkers = (handler) ->
  load_points = ->
    $.ajax
      url: "/team_locations.json#{window.location.search}"
      type: 'GET'
      success: (result) ->
        handler.removeMarkers(@markers) if markers != null
        markers = handler.addMarkers(result)
        zoomMap(handler)
        return
      error: (result) ->
        console.log 'Failed to load map.'
        return
    return

  load_points()
  setInterval load_points, 60000

zoomMap = (handler) ->
  handler.bounds.extendWith markers
  handler.fitMapToBounds()
