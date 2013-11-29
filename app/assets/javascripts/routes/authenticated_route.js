AuthenticatedRoute = Ember.Route.extend({
  beforeModel: function(transition) {
    if (!BattleFaces.AuthManager.isAuthenticated()) {
      this.redirectToLogin(transition);
    }
  },

  redirectToLogin: function(transition) {
    var sessionsNewController = this.controllerFor('sessions.new');
    sessionsNewController.set('attemptedTransition', transition);

    this.transitionTo('sessions.new');
  },

  events: {
    error: function(reason, transition) {
      this.redirectToLogin(transition);
    }
  }
});
