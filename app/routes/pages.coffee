`import Ember from 'ember'`

PagesRoute = Ember.Route.extend
  model: ->
    @store.find('page')

`export default PagesRoute`
