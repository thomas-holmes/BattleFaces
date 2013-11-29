BattleFaces.TopSecretRoute = AuthenticatedRoute.extend({
  model: function() {
    return MasterFace.find();
  }
});
