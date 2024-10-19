let get_all = 
  Dream.get "" 
  @@ fun _ ->
    Service.Users.get_all
    |> Service.Users.yojson_of_user_get_all_res
    |> Yojson.Safe.to_string
    |> Dream.json

let get = 
  Dream.get "/:id" 
  @@ Auth.middleware_bearer
  @@ fun req ->
    let id = "id" |> Dream.param req in
    `Assoc [
      ("message", `String "ok");
      ("id", `String id);
    ]
    |> Yojson.Safe.to_string
    |> Dream.json

let route = Dream.scope "/users" [] [
  get_all;
  get
]
