`import Ember from 'ember'`
`import markdown from '../helpers/markdown'`

PageController = Ember.ObjectController.extend
  isEditing: false

  formattedBody: (->
    if @get('body') then markdown(@get('body')) else ''
  ).property('body').readOnly()

  mainActionText: (->
    if @get('isEditing')
      'Save'
    else
      'Edit'
  ).property('isEditing')

  actions:
    mainAction: ->
      if @get('isEditing')
        @send('save')
      else
        @send('toggleEditing')

    save: ->
      @get('model').save()
      @send('toggleEditing')

    toggleEditing: ->
      @set('isEditing', !@get('isEditing'))

    activateEditing: ->
      @set('isEditing', true)

`export default PageController`
