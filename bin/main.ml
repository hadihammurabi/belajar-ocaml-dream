let () =
  Dream.run
  @@ Dream.router [
    Belajar_ocaml_dream.Handler_index.index;
    Belajar_ocaml_dream.Handler_users.get_all
  ]
