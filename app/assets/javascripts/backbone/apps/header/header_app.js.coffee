@Demo.module "HeaderApp", (HeaderApp, App, Backbone, Marionette, $, _) ->
  @startWithParent = false

  API =
    ListHeader: ->
      HeaderApp.List.Controller.ListHeader()

  HeaderApp.on "start", ->
    API.ListHeader()