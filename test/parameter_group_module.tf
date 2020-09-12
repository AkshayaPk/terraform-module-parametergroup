module "parameter_group_module" {
  source                      = "../"
  parameter_group_name        = "test-parameter-group"
  parameter_group_description = "This is for testing"
  family                      = "mysql5.7"
  parameters = [
    {
      name  = "character_set_server"
      value = "utf8"
    }
  ]
  tags = {
    "Name" = "Parameter Group for RDS"
  }
}