// For more information see: http://emberjs.com/guides/routing/

BattleFaces.MasterFacesNewRoute = Ember.Route.extend({
  setupController: function(controller, model) {
    var rec = MasterFace.createRecord();
    this.controller.set('model', rec);
  }
});
