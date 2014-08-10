`import Ember from 'ember'`

PagesController = Ember.ArrayController.extend
  needs: ['page']

  actions:
    createPage: ->
      title = @get('newPageTitle')

      page = @store.createRecord('page', title: title)
      page.save()
      @transitionToRoute('page', page)
      @get('controllers.page').send('toggleEditing')

    deletePage: (page) ->
      page.deleteRecord()
      page.save()

      @transitionToRoute('pages')

`export default PagesController`
