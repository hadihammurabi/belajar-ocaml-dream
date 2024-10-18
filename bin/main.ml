let () =
  Dream.run
  @@ Dream.router [
    Handler.Index.index;
    Handler.Users.route;
  ]
