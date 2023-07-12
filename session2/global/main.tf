// Configuración del proveedor de AWS
// Se especifica la región, la versión de la API de AWS y el perfil de AWS utilizado para autenticación


// Creación de un bucket de S3
// Se especifica el nombre del bucket
// Se define un bloque "lifecycle" para prevenir su eliminación accidental
// Se habilita el versionamiento del bucket
// Se especifica la configuración de cifrado de lado del servidor
resource "aws_s3_bucket" "terraform_state" {
  bucket = var.s3_bucket_terraform_state

  lifecycle {
    prevent_destroy = false
  }

  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

// Creación de una tabla de DynamoDB
// Se especifica el nombre de la tabla, el modo de facturación y la clave hash
// Se especifica un atributo con nombre "LockID" de tipo string
resource "aws_dynamodb_table" "terraform_locks" {
  name         = var.dynanodb_table_terraform_state
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
