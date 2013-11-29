BattleFaces.ApplicationController = Ember.Controller.extend({
  currentMasterFace: function() {
    return BattleFaces.AuthManager.get('apiKey.master_face');
  }.property('BattleFaces.AuthManager.apiKey'),

  isAuthenticated: function() {
    return BattleFaces.AuthManager.isAuthenticated();
  }.property('BattleFaces.AuthManager.apiKey')
});
