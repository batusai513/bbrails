@Demo.module "HeaderApp.List", (List, App, Backbone, Marionette, $, _) ->
  List.Controller = 
    ListHeader: ->
      links = App.request "header:entities" #@getLinksCollection()

      headerView = @getHeaderView links
      App.headerRegion.show headerView

    getHeaderView: (links) ->
      new List.Headers
        collection: links