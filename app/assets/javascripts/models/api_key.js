// for more details see: http://emberjs.com/guides/models/defining-models/

BattleFaces.ApiKey = DS.Model.extend({
  user: DS.belongsTo('BattleFaces.MasterFace'),
  accessToken: DS.attr('string'),
  scope: DS.attr('string'),
  expiredAt: DS.attr('date'),
  createdAt: DS.attr('date')
});
