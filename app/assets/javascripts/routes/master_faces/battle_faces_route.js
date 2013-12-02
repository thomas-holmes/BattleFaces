BattleFaces.BattleFacesRoute = AuthenticatedRoute.extend({
  model: function() {
    return BattleFaces.BattleFace.find();
  },

  actions: {
    selectBattleFace: function(battleFace) {
      this.transitionTo('/battle_faces/' + battleFace.id.toString());
    }
  }
});
