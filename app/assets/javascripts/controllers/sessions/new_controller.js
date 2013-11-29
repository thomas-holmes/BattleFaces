BattleFaces.SessionsNewController = Ember.Controller.extend({
  loginMasterFace: function() {
    var router = this.get('target');
    var data = this.getProperties('email', 'password');

    $.post('/api/session', data, function(results) {
      BattleFaces.AuthManager.authenticate(results.api_key.access_token, results.api_key.master_face_id);
      router.transitionTo('index');
    });
  }
});
