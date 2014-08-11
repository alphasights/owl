`import Ember from 'ember'`

PageRoute = Ember.Route.extend
  setupController: (controller) ->
    @_super.apply(this, arguments)

    if controller.get('isEditing')
      textarea = Ember.$('textarea')
      textarea.val textarea.val()
      textarea.focus()

  actions:
    error: (reason) ->
      if reason.status == 404
        @transitionTo('pages')

`export default PageRoute`
