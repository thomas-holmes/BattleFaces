// for more details see: http://emberjs.com/guides/models/defining-models/

BattleFaces.MasterFace = DS.Model.extend({
  name: DS.attr('string'),
  email: DS.attr('string'),

  battle_faces: DS.hasMany('BattleFaces.BattleFace'),
  
  errors: {}
});
