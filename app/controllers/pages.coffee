`import Ember from 'ember'`

PagesController = Ember.ArrayController.extend
  actions:
    createPage: ->
      title = @get('newPageTitle')

      @store.createRecord('page', title: title).save()

    deletePage: (page) ->
      page.deleteRecord()
      page.save()

      @transitionToRoute('pages')

`export default PagesController`
