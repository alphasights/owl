`import Ember from 'ember'`

NavigationView = Ember.View.extend
  isExpanding: false
  isExpanded: false

  toggleExpansion: ->
    @set('isExpanding', !@get('isExpanding'))

  didInsertElement: ->
    @$('.toggle-expansion').on('click', => @toggleExpansion())

  isExpandedDidChange: (->
    if @get('isExpanding')
      @$('aside').animate({
        width: "+=100px"
      }, {
        duration: "fast",
        easing: "linear",
        step: ((now) -> Ember.$('main').css("margin-left", now)),
        complete: (=> @set('isExpanded', true))
      })
    else
      @$('aside').animate({
        width: "-=100px"
      }, {
        duration: "fast",
        easing: "linear",
        step: ((now) -> Ember.$('main').css("margin-left", now)),
        complete: (=> @set('isExpanded', false))
      })
  ).observes('isExpanding')


`export default NavigationView`
