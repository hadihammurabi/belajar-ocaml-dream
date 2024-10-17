let get_all = 
  Dream.get "/users" 
  @@ fun _ ->
    Service_users.get_all
    |> Service_users.yojson_of_user_get_res
    |> Yojson.Safe.to_string
    |> Dream.json
