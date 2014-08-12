`import Ember from 'ember'`

NavigationView = Ember.View.extend
  isExpanding: false
  isExpanded: false

  toggleExpansion: ->
    @set('isExpanding', !@get('isExpanding'))

  didInsertElement: ->
    @$('input[type="text"]').on('focus blur', => @toggleExpansion())

  isExpandedDidChange: (->
    if @get('isExpanding')
      @$('aside').velocity({
        width: "+=100px"
      }, {
        duration: "fast",
        complete: (=> @set('isExpanded', true))
      })

      Ember.$('main').velocity({
        "margin-left": "+=100px"
      }, {
        duration: "fast"
      })
    else
      @$('aside').velocity({
        width: "-=100px"
      }, {
        duration: "fast",
        complete: (=> @set('isExpanded', false))
      })

      Ember.$('main').velocity({
        "margin-left": "-=100px"
      }, {
        duration: "fast"
      })
  ).observes('isExpanding')


`export default NavigationView`
