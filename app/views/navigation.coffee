`import Ember from 'ember'`

NavigationView = Ember.View.extend
  isExpanding: false
  isExpanded: false

  toggleExpansion: ->
    @set('isExpanding', !@get('isExpanding'))

  didInsertElement: ->
    @$('input').on('focus blur', => @toggleExpansion())

  isExpandedDidChange: (->
    if @get('isExpanding')
      @$('aside').velocity({
        width: "+=100px"
      }, {
        duration: "fast",
        easing: "linear",
        complete: (=> @set('isExpanded', true))
      })

      Ember.$('main').velocity({
        "margin-left": "+=100px"
      }, {
        duration: "fast",
        easing: "linear",
      })
    else
      @$('aside').velocity({
        width: "-=100px"
      }, {
        duration: "fast",
        easing: "linear",
        complete: (=> @set('isExpanded', false))
      })

      Ember.$('main').velocity({
        "margin-left": "-=100px"
      }, {
        duration: "fast",
        easing: "linear",
      })
  ).observes('isExpanding')


`export default NavigationView`
