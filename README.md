# Azure Terraform Modules

This repository is a library of reusable Terraform modules for Azure. It is not a deployable root configuration: it intentionally does not include root-level `main.tf`, `outputs.tf`, `providers.tf`, or `variables.tf`.

Choose a module and call it from your own Terraform root configuration. The root configuration is responsible for configuring the Azure provider, supplying inputs, and managing state. Nothing in this repository is deployed just by cloning it.

## Modules and Resources

The resources below are defined inside each module under `modules/`. They are created only when a consuming Terraform configuration calls that module. Optional and OS-dependent resources are noted.

| Module | Resources defined in the module |
|---|---|
| [vnet](modules/vnet/README.md) ([Terraform](modules/vnet/main.tf)) | Virtual network; configurable subnets; one network security group associated with each subnet |
| [resource_group](modules/resource_group/README.md) ([Terraform](modules/resource_group/main.tf)) | Azure resource group |
| [tfstate_storage](modules/tfstate_storage/README.md) ([Terraform](modules/tfstate_storage/main.tf)) | Storage account and blob container for Terraform state |
| [storage_account](modules/storage_account/README.md) ([Terraform](modules/storage_account/main.tf)) | Storage account; optional blob containers, queues, tables, and file shares; optional blob and network-rule configuration |
| [key_vault](modules/key_vault/README.md) ([Terraform](modules/key_vault/main.tf)) | Key Vault; optional access policies, secrets, and cryptographic keys |
| [log_analytics](modules/log_analytics/README.md) ([Terraform](modules/log_analytics/main.tf)) | Log Analytics workspace; optional Log Analytics solutions |
| [aks](modules/aks/README.md) ([Terraform](modules/aks/main.tf)) | Kubernetes cluster; optional additional node pools and ACR pull role assignment |
| [databricks](modules/databricks/README.md) ([Terraform](modules/databricks/main.tf)) | Azure Databricks workspace |
| [unity_catalog](modules/unity_catalog/README.md) ([Terraform](modules/unity_catalog/main.tf)) | Databricks access connector with managed identity; hierarchical-namespace storage account; private blob container; Storage Blob Data Contributor role assignment |
| [app_service](modules/app_service/README.md) ([Terraform](modules/app_service/main.tf)) | App Service plan and either a Linux or Windows web app |
| [function_app](modules/function_app/README.md) ([Terraform](modules/function_app/main.tf)) | Function storage account; App Service plan; either a Linux or Windows Function App; optional Application Insights |
| [azure_bot](modules/azure_bot/README.md) ([Terraform](modules/azure_bot/main.tf)) | Application Insights; Application Insights API key; Azure Bot Service |

Each module directory contains its Terraform resources, input variables, outputs, and (where provided) module-specific documentation. Follow its README for inputs, prerequisites, and usage examples.