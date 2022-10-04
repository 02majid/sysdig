resource "sysdig_secure_macro" "marco_tf_test" {
  name = "spawn_process_tf"
  condition = "evt.type = execve and container.id != host"
}

resource "sysdig_secure_list" "list_tf_test" {
  name = "my_binaries_tf"
  items = ["date", "grep","cat"]
}