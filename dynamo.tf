resource "aws_dynamodb_table" "campaigns-dynamodb-table" {
  name           = "Camps"
  billing_mode   = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "company"
  range_key      = "transaction_date"

  attribute {
    name = "company"
    type = "S"
  }

  attribute {
    name = "transaction_date"
    type = "S"
  }

  ttl {
    attribute_name = "TimeToExist"
    enabled        = false
  }

  tags = {
    Name        = "dynamodb-table-campaigns"
    Environment = "production"
  }
}

resource "aws_dynamodb_table" "statistics-dynamodb-table" {
  name           = "Stats"
  billing_mode   = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "storage"
  range_key      = "time"

  attribute {
    name = "storage"
    type = "S"
  }

  attribute {
    name = "time"
    type = "N"
  }

  ttl {
    attribute_name = "TimeToExist"
    enabled        = false
  }

  tags = {
    Name        = "dynamodb-table-stats"
    Environment = "production"
  }
}
