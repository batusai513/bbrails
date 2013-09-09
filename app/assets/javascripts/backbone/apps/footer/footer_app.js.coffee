@Demo.module "FooterApp", (FooterApp, App, Backbone, Marionette, $, _) ->
  @startWithParent = false

  API =
    showFooter: ->
      FooterApp.Show.Controller.showFooter()

  FooterApp.on "start", ->
    API.showFooter()

  #opcion 1
  # App.addInitializer ->
  #   API.showFooter()

  #opcion 2
  # App.commands.setHandler "footer:show", ->
  #   API.showFooter()