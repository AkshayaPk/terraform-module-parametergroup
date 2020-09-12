/**
* AWS RDS Parameter Group Module That anyone can use
* This module allows you to create parameter groups for various RDS database engines
*
* ##Usage
* ``` ruby
* provider "aws" {
*   region = "us-east-1"
* }
* 
* module "parameter_group_module" {
*   source                      = "../" #This will be a github,bitbucket URL
*   parameter_group_name        = "test-parameter-group"
*   parameter_group_description = "This is for testing"
*   family                      = "mysql5.7"
*   parameters = [
*     {
*       name  = "character_set_server"
*       value = "utf8"
*     }
*   ]
*   tags = {
*     "Name" = "Parameter Group for RDS"
*   }
* }
*/
//
