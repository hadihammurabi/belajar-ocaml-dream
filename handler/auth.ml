let error_unauthorized = Dream.respond ~status:`Unauthorized "Unauthorized"

let middleware_bearer (next: Dream.handler) (req: Dream.request) =
  let h = Dream.header req "authorization" in
  let hh = Option.value h ~default:"" in
  if hh <> "askdjklasjdas" then error_unauthorized else
  next req
;;

