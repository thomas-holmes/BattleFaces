var MasterFace = BattleFaces.MasterFace;

AuthManager = Ember.Object.extend({
  init: function() {
    this._super();
    var accessToken = $.cookie('access_token');
    var authMasterFaceId = $.cookie('auth_master_face');
    if (!Ember.isEmpty(accessToken) && !Ember.isEmpty(authMasterFaceId)) {
      this.authenticate(accessToken, authMasterFaceId)
    }
  },

  isAuthenticated: function() {
    return !Ember.isEmpty(this.get('apiKey.access_token'))
            && !Ember.isEmpty(this.get('apiKey.master_face'));
  },

  authenticate: function(accessToken, masterFaceId) {
    $.ajaxSetup({
      headers: {'Authorization': 'Bearer ' + accessToken }
    });
    var master_face = MasterFace.find(masterFaceId);
    this.set('apiKey', BattleFaces.ApiKey.create({
      access_token: accessToken, // Tutorial had this as accessToken, doesn't match the model
      master_face: master_face
    }));
  },

  reset: function() {
    BattleFaces.__container__.lookup('route:application').transitionTo('sessions.new');
    Ember.run.sync();
    Ember.run.next(this, function() {
      this.set('apiKey', null);
      $.ajaxSetup({
        headers: { 'Authorization': 'Bearer none' }
      });
    });
  },

  apiKeyObserver: function() {
    if (Ember.isEmpty(this.get('apiKey'))) {
      $.removeCookie('access_token');
      $.removeCookie('auth_master_face');
    } else {
      $.cookie('access_token', this.get('apiKey.access_token'));
      $.cookie('auth_master_face', this.get('apiKey.master_face.id'));
    }
  }.observes('apiKey')
});

DS.rejectionHandler = function(reason) {
  if (reason.status === 401) {
    App.AuthManager.reset();
  }
  throw reason;
};
