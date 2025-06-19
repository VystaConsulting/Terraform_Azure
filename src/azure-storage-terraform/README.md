# Azure Storage Terraform Template

This project provides a Terraform template for creating an Azure Storage Account. It includes all necessary configurations and files to set up the storage account in Azure.

## Project Structure

- `main.tf`: Contains the main configuration for the Azure storage account resource.
- `variables.tf`: Defines input variables for the Terraform configuration.
- `outputs.tf`: Specifies output values returned after applying the configuration.
- `provider.tf`: Configures the Azure provider and authentication details.
- `README.md`: Documentation for the project.

## Prerequisites

- An Azure account with the necessary permissions to create resources.
- Terraform installed on your local machine.

## Getting Started

1. **Clone the repository**:
   ```
   git clone <repository-url>
   cd azure-storage-terraform
   ```

2. **Configure your Azure provider**:
   Update the `provider.tf` file with your Azure subscription ID and tenant ID.

3. **Initialize Terraform**:
   Run the following command to initialize the Terraform configuration:
   ```
   terraform init
   ```

4. **Plan the deployment**:
   Generate an execution plan with:
   ```
   terraform plan
   ```

5. **Apply the configuration**:
   Create the Azure storage account by applying the configuration:
   ```
   terraform apply
   ```

6. **Review outputs**:
   After the deployment, review the output values to find the storage account's primary endpoint and access keys.

## Cleanup

To remove the resources created by this template, run:
```
terraform destroy
```

This will delete all resources defined in the Terraform configuration.