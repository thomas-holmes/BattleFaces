// For more information see: http://emberjs.com/guides/routing/

BattleFaces.MasterFacesNewRoute = Ember.Route.extend({
  setupController: function(controller, model) {
    this.controller.set('model', MasterFace.createRecord());
  }
});
