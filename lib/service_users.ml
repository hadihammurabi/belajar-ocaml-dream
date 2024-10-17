open Ppx_yojson_conv_lib.Yojson_conv.Primitives

type user_get_res = {
  email: string;
} [@@deriving yojson]

let get_all = 
    {email="alksjdklasjd@gmail.com"}
;;
