BattleFaces.SessionsNewController = Ember.Controller.extend({
  loginMasterFace: function() {
    var self = this;
    var router = this.get('target');
    var data = this.getProperties('email', 'password');
    var attemptedTransition = this.get('attemptedTransition');

    $.post('/api/session', data, function(results) {
      BattleFaces.AuthManager.authenticate(results.api_key.access_token, results.api_key.master_face_id);
      if (attemptedTransition) {
        attemptedTransition.retry();
        self.set('attemptedTransition', null);
      } else {
        router.transitionTo('index');
      }
    });
  }
});
