define [
  'underscore'
  'views/item-list'
  'views/item'
  'views/textarea'
], (_, ItemListView, ItemView, TextareaView) ->

  class ScriptsView extends ItemListView

    constructor: (options) ->
      _.extend(@, _.pick(options, 'sesh'))
      super

    label: "script"

    itemView: -> ItemView.extend
      attr: 'script'
      inputView: TextareaView
      sesh: @sesh
