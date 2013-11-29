// Is an Ember.Object because we won't use the persistence layer
BattleFaces.ApiKey = Ember.Object.extend({
  access_token: '',
  master_face: null
});
