BattleFaces.Router.map(function() {
  this.resource("battle_faces", function() {
    this.resource("battle_face", { path: ":battle_face_id" });
  });
  this.resource('sessions', function() {
    this.route('new');
  });
  this.resource('master_faces', function() {
    this.route('new')
  });
  this.route('top_secret');
});
