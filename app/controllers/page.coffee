`import Ember from 'ember'`
`import markdown from '../helpers/markdown'`

PageController = Ember.ObjectController.extend
  isEditing: false

  formattedBody: (->
    if @get('body') then markdown(@get('body')) else ''
  ).property('body').readOnly()

  actions:
    save: ->
      @get('model').save()
      @send('toggleEditing')

    toggleEditing: ->
      @set('isEditing', !@get('isEditing'))

`export default PageController`
