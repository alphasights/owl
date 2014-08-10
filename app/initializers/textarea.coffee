`import Ember from 'ember'`

TextareaInitializer =
  name: 'textarea'

  initialize: () ->
    Ember.TextArea.reopen
      focusOnInsert: (->
        @$().val @$().val()
        @$().focus()
      ).on('didInsertElement')

`export default TextareaInitializer`
