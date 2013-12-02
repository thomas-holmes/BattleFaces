BattleFaces.BattleFace = DS.Model.extend({
  name: DS.attr('string'),
  level: DS.attr('number'),
  attack: DS.attr('number'),
  defense: DS.attr('number'),
  speed: DS.attr('number'),

  master_face: DS.belongsTo('BattleFaces.MasterFace')
})
