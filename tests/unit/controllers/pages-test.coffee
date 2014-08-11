`import { test, moduleFor } from 'ember-qunit'`

moduleFor 'controller:pages', 'PagesController', {
  needs: ['controller:page']
}

# Replace this with your real tests.
test 'it exists', ->
  controller = @subject()
  ok controller

