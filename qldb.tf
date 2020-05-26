resource "aws_qldb_ledger" "krugerrand-ledger" {
  name = "kruger"

  tags = {
    Name        = "krugerrand-quantum-ledger"
    Environment = "production"
  }
}
