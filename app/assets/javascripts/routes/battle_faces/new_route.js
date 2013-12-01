BattleFaces.BattleFacesNewRoute = Ember.Route.extend({
  actions: {
    selectNewBattleFace: function(battleFace) {
      var self = this;
      var router = this.get('router');

      $.post('/api/battle_faces', { id: battleFace.id }, function(results) {
        self.store.push('battle_face', results.battle_face);
        router.transitionTo('battle_faces');
      });
    }
  },
  model: function() {
    return Ember.$.getJSON('/api/battle_faces/new');
  }
});
