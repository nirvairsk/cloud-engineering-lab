variable "location" {
  description = "Azure region"
  type        = string
  default     = "Central India"
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
  default     = "rg-appservice-poc"
}

variable "app_name" {
  description = "Unique App Service name"
  type        = string
  default     = "shruti-appservice-poc"
}
variable "service_plan_name" {
  description = "Azure App Service Plan name"
  type        = string
  default     = "asp-appservice-poc"
}