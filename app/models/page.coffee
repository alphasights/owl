`import DS from 'ember-data'`

Page = DS.Model.extend
  title: DS.attr('string')
  body: DS.attr('string')

`export default Page`
