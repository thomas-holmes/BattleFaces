DS.RESTAdapter.reopen({
  namespace :"api"
});

BattleFaces.Store = DS.Store.extend({
  revision: 12,
  //adapter: '_ams'
  adapter: DS.RESTAdapter.create()
});
