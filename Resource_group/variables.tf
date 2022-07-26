//Resource Group Variables
//****************************************************************************
variable "client" {
  description = "(Required) Specify the client name"
  type        = string
  default     = "test"
}
variable "prefix" {
  description = "(Required) Specify the prefix after the client name"
  type        = string
  default     = "dev"
}
variable "location" {
  description = "(Required) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
  type        = string
  default     = "east us"
}
variable "tags" {
  description = "(Optional) mapping of tagging assiged to all the resources"
  type        = map(any)
  default = {
    "Environment" = "",
    "Dept"        = ""
  }
}
//****************************************************************************