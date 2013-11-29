BattleFaces.BattleFacesRoute = AuthenticatedRoute.extend({
  model: function() {
    return BattleFaces.BattleFace.find();
  }
});
