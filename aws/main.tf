# Configura el proveedor de AWS y la región donde se desplegarán los recursos
provider "aws" {
  region = "us-east-2"
}

# Obtiene la imagen más reciente de Ubuntu 22.04 (Jammy) para instancias EC2
data "aws_ami" "ubuntu" {
  most_recent = true

  # Filtra por nombre de la imagen
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  # Filtra por tipo de virtualización
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  # Solo imágenes propiedad de Canonical (ID oficial)
  owners = ["099720109477"] # Canonical
}

# Crea una instancia EC2 usando la imagen de Ubuntu obtenida
resource "aws_instance" "app_server" {
  ami           = data.aws_ami.ubuntu.id      # ID de la imagen AMI
  instance_type = "t2.micro"                  # Tipo de instancia

  tags = {
    Name = "learn-terraform"                  # Etiqueta para identificar la instancia
  }
}