`import Ember from 'ember'`

PageRoute = Ember.Route.extend
  actions:
    error: (reason) ->
      if reason.status == 404
        @transitionTo('pages')

`export default PageRoute`
