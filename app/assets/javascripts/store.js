DS.RESTAdapter.reopen({
  namespace :"api"
});

BattleFaces.Store = DS.Store.extend({
  adapter: DS.RESTAdapter.create()
});
