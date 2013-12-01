BattleFaces.BattleFacesNewRoute = Ember.Route.extend({
  actions: {
    selectNewBattleFace: function(battleFace) {
      var self = this;
      var router = this.get('router');

      $.post('/api/battle_faces', { id: battleFace.id }, function(results) {
        BattleFaces.BattleFace.createRecord(results.battle_face);
        router.transitionTo('battle_faces');
      });
    }
  },
  model: function() {
    return Ember.$.getJSON('/api/battle_faces/new');
  }
});
