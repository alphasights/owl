`import DS from 'ember-data'`

Page = DS.Model.extend
  title: DS.attr('string')
  body: DS.attr('string')

  slug: (->
    "#{@get('id')}-#{@get('title').parameterize()}"
  ).property('title')

`export default Page`
