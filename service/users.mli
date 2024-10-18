type user_get_res
type user_get_all_res

val yojson_of_user_get_res: user_get_res -> Yojson.Safe.t
val yojson_of_user_get_all_res: user_get_all_res -> Yojson.Safe.t
val get_all: user_get_all_res
