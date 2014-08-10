`import Ember from 'ember'`

PageRoute = Ember.Route.extend
  setupController: (controller) ->
    @_super.apply(this, arguments)

    if controller.get('isEditing')
      Ember.$('textarea').focus()

  actions:
    error: (reason) ->
      if reason.status == 404
        @transitionTo('pages')

`export default PageRoute`
