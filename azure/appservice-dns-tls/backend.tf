terraform {
  backend "azurerm" {
    resource_group_name  = "rg-appservice-poc"
    storage_account_name = "sttfstate2164732752"
    container_name       = "tfstate"
    key                  = "appservice-dns-tls.tfstate"
    use_azuread_auth     = true
  }
}