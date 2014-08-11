`import DS from 'ember-data'`

ApplicationAdapter = DS.FirebaseAdapter.extend
  firebase: new Firebase("https://#{OwlENV.APP.FIREBASE_APP}.firebaseio.com")

`export default ApplicationAdapter`

