resource "aws_qldb_ledger" "krugerrand-ledger" {
  name = "kruger"
  deletion_protection = false
  tags = {
    Name        = "krugerrand-quantum-ledger"
    Environment = "production"
  }
}
