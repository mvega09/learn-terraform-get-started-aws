# Learn Terraform: Get Started on AWS

Este proyecto es una guía práctica para aprender a usar [Terraform](https://www.terraform.io/) con AWS, automatizando la creación de infraestructura en la nube.

## Estructura del proyecto

```
learn-terraform-get-started-aws/
├── aws/
│   ├── main.tf
│   └── terraform.tf
├── .gitignore
└── README.md
```

## ¿Qué hace este proyecto?

- Configura el proveedor de AWS.
- Busca la imagen más reciente de Ubuntu 22.04.
- Despliega una instancia EC2 usando esa imagen.

## Requisitos

- [Terraform](https://www.terraform.io/downloads.html) instalado.
- Credenciales de AWS configuradas (por ejemplo, con `aws configure`).
- Permisos para crear recursos en AWS.

## Uso

1. Clona el repositorio:

   ```bash
   git clone https://github.com/mvega09/learn-terraform-get-started-aws.git
   cd learn-terraform-get-started-aws/aws
   ```

2. Inicializa Terraform:

   ```bash
   terraform init
   ```

3. Revisa el plan de ejecución:

   ```bash
   terraform plan
   ```

4. Aplica los cambios para crear la infraestructura:

   ```bash
   terraform apply
   ```

## Archivos principales

- **main.tf**: Define los recursos de AWS (proveedor, AMI, instancia EC2).
- **terraform.tf**: Configura el proveedor y la versión requerida.

## Notas

- No subas archivos generados por Terraform ni credenciales al repositorio.
- Recuerda destruir los recursos cuando termines:

  ```bash
  terraform destroy
  ```

## Licencia

Este proyecto es solo para fines educativos.
