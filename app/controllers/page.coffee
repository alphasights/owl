`import Ember from 'ember'`
`import markdown from '../helpers/markdown'`

PageController = Ember.ObjectController.extend
  formattedBody: (->
    if @get('body') then markdown(@get('body')) else ''
  ).property('body').readOnly()

  actions:
    save: ->
      @get('model').save()

`export default PageController`
