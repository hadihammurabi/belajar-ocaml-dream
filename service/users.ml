open Ppx_yojson_conv_lib.Yojson_conv.Primitives

type user_get_res = {
  email: string;
} [@@deriving yojson]

type user_get_all_res = user_get_res list [@@deriving yojson]

let get_all = 
  [{email="alksjdklasjd@gmail.com"}]
;;
