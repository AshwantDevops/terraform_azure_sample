environment = "dev"
location    = "westeurope"
admin_password = "<password>"
admin_username      = "terraform"

vms = {
  app1 = {
    size = "Standard_D2s_v3"
  }

  app2 = {
    size = "Standard_D2s_v3"
  }
}