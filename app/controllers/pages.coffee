`import Ember from 'ember'`

PagesController = Ember.ArrayController.extend
  needs: ['page']

  actions:
    createPage: ->
      title = @get('newPageTitle')

      return if Ember.isBlank(title)

      page = @store.createRecord('page', title: title, body: "# #{title}")
      page.save().then(=> @set('newPageTitle', ''))
      @transitionToRoute('page', page)
      @get('controllers.page').send('activateEditing')

    deletePage: (page) ->
      page.deleteRecord()
      page.save()

      @transitionToRoute('pages')

`export default PagesController`
