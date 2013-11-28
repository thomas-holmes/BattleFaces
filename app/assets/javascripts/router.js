BattleFaces.Router.map(function() {
  this.resource("battle_faces", function() {
    this.resource("battle_face", { path: ":battle_face_id" });
  });
});
