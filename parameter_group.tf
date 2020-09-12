resource "aws_db_parameter_group" "this" {
  name        = var.parameter_group_name
  description = coalesce(var.parameter_group_description, "Database parameter group: ${var.parameter_group_name}")
  family      = var.family
  dynamic "parameter" {
    for_each = var.parameters
    content {
      apply_method = lookup(parameter.value, "apply_method", null)
      name         = parameter.value.name
      value        = parameter.value.value
    }
  }
  tags = merge(
    var.tags,
    {
      "Name" = format("%s", var.parameter_group_name)
    }
  )

  lifecycle {
    create_before_destroy = true
  }
}