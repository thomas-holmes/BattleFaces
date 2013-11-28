BattleFaces.BattleFacesRoute = Ember.Route.extend({
  model: function() {
    return BattleFaces.BattleFace.find();
  }
});
