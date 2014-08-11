`import Ember from 'ember'`

Router = Ember.Router.extend
  location: OwlENV.locationType

Router.map ->
  @resource 'pages', path: '/', ->
    @resource 'page', path: '/:page_id'

`export default Router`
