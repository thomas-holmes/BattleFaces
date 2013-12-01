BattleFaces.BattleFace = DS.Model.extend({
  name: DS.attr('string'),
  master_face: DS.belongsTo('BattleFaces.MasterFace')
})
