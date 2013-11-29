BattleFaces.MasterFacesNewController = Ember.Controller.extend({
  createMasterFace: function() {
    var router = this.get('target');
    var data = this.getProperties('name', 'email', 'password', 'password_confirmation');
    var master_face = this.get('model');

    $.post('/api/master_faces', { master_face: data }, function(results) {
      BattleFaces.AuthManager.authenticate(results.api_key.access_token, results.api_key.master_face_id);
      router.transitionTo('index');
    });
  }
});
