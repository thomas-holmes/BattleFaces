BattleFaces.ApplicationRoute = Ember.Route.extend({
  init: function() {
    this._super();
    BattleFaces.AuthManager = AuthManager.create();
  },

  events: {
    logout: function() {
      BattleFaces.AuthManager.reset();
      this.transitionTo('index');
    }
  }
});
