variable "name" {
  description = "(Required) Specifies the name of the Key Vault. Changing this forces a new resource to be created. The name must be globally unqiue. If the vault is in a recoverable state then the vault will need to be purged before reusing the name."
  type        = string
  
}

variable "location" {
  description = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string
  
}

variable "resource_group_name" {
  description = "(Required) The name of the resource group in which to create the Key Vault. Changing this forces a new resource to be created."
  type        = string
  
}

variable "enabled_for_disk_encryption" {
  description = "(Optional) Boolean flag to specify whether Azure Disk Encryption is permitted to retrieve secrets from the vault and unwrap keys. Defaults to false."
  type        = bool
  default     = true
  
}
variable "soft_delete_retention_days" {
  description = "(Optional) The number of days that items should be retained for once soft-deleted. This value can be between 7 and 90 (the default) days."
  type        = number
  default     = 7
  
}
variable "purge_protection_enabled" {
  description = "(Optional) Is Purge Protection enabled for this Key Vault? Defaults to false."
  type        = bool
  default     = false
  
}

variable "sku_name" {
  description = "(Required) The Name of the SKU used for this Key Vault. Possible values are standard and premium."
  type        = string
  default     = "standard"
  
}

variable "key_permissions" {
  description = "(Optional) List of key permissions, must be one or more from the following: Backup, Create, Decrypt, Delete, Encrypt, Get, Import, List, Purge, Recover, Restore, Sign, UnwrapKey, Update, Verify and WrapKey."
  type        = list(string)
  default     = ["GET"]
  
}
variable "secret_permissions" {
  description = "(Optional) List of secret permissions, must be one or more from the following: Backup, Delete, Get, List, Purge, Recover, Restore and Set."
  type        = list(string)
  default     = ["GET"]
  
}
variable "storage_permissions" {
  description = "(Optional) List of storage permissions, must be one or more from the following: Backup, Delete, DeleteSAS, Get, GetSAS, List, ListSAS, Purge, Recover, RegenerateKey, Restore, Set, SetSAS and Update."
  type        = list(string)
  default     = ["GET"]
  
}

variable "certificate_permissions" {
  description = "(Optional) List of certificate permissions, must be one or more from the following: Backup, Create, Delete, DeleteIssuers, Get, GetIssuers, Import, List, ListIssuers, ManageContacts, ManageIssuers, Purge, Recover, Restore, SetIssuers and Update."
  type        = list(string)
  default     = ["GET"]
  
}

variable "tags" {
  description = "(Optional) A mapping of tags which should be assigned to the key vault."
  type        = map
}