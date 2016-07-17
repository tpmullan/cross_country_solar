# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
markers = null
handler = null

$(document).ready ->
  if $('#map').size() > 0
    handler = Gmaps.build('Google')
    handler.buildMap {
      provider: null
      internal: id: 'map'
    }, ->
      handler.addKml url: "https://www.google.com/maps/d/kml?mid=1eeJmQ-nJxJTALLWrpEiyK2TBhfU&forcekml=1&cid=mp&cv=LLS4f3GpivQ.en"
      getMarkers(handler)
      setTimeout (->
        zoomMap(handler)
      ), 750
      return
    
getMarkers = (handler) ->
  load_points = ->
    $.ajax
      url: "/team_locations.json#{window.location.search}"
      type: 'GET'
      success: (result) ->
        handler.removeMarkers(markers) if markers != null
        markers = handler.addMarkers(result)
        zoomMap(handler)
        addClickToMarkers(markers)
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

bindToMarker = ($item, marker) ->
  if marker != null && marker != undefined
    $item.on 'click', ->
      handler.getMap().setZoom 14
      marker.setMap handler.getMap()
      #because clusterer removes map property from marker
      marker.panTo()
      google.maps.event.trigger marker.getServiceObject(), 'click'
      return
  return

addClickToMarkers = (markers) ->
  _.each $(".team_row"), (row) ->
    $row = $(row)
    bindToMarker $row, markers[$row.data("number") - 1]
    return
  return
