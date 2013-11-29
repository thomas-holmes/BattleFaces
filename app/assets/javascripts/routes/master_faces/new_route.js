BattleFaces.MasterFacesNewRoute = Ember.Route.extend({
  setupController: function(controller, model) {
    var rec = MasterFace.createRecord();
    this.controller.set('model', rec);
  }
});
