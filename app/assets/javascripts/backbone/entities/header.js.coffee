@Demo.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->
  class Entities.Header extends Backbone.Model

  class Entities.HeaderCollection extends Backbone.Collection
    model: Entities.Header

  API =
    getHeaders: ->
      new Entities.HeaderCollection [
        {name: "Users"}
        {name: "Leads"}
        {name: "Appoinments"}
      ]


  App.reqres.setHandler "header:entities", ->
    API.getHeaders()