`import Ember from 'ember'`
`import markdown from '../helpers/markdown'`

PagesController = Ember.ArrayController.extend
  body: ''

  formattedBody: (->
    markdown(@get('body'))
  ).property('body').readOnly()

`export default PagesController`
