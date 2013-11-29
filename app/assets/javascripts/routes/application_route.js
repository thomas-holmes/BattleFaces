BattleFaces.ApplicationRoute = Ember.Route.extend({
  init: function() {
    this._super();
    BattleFaces.AuthManager = AuthManager.create();
  }
});
