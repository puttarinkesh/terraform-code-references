variable "name" {
    description = "Specifies the name of the Virtual Machine. Changing this forces a new resource to be created."
    type = string
  }

 variable "resource_group_name" {
    description = "Specifies the name of the Resource Group in which the Virtual Machine should exist. Changing this forces a new resource to be created."
    type = string
  }


variable "location" {
  description = "Specifies the Azure Region where the Virtual Machine exists. Changing this forces a new resource to be created."
  type = string
}

variable "network_interface_ids" {
  description = "A list of Network Interface ID's which should be associated with the Virtual Machine."
  type = list(string)
}

variable "size" {
  description = "Specifies the size of the Virtual Machine. See also Azure VM Naming Conventions."
  type = string
}

variable "publisher" {
  description = "Specifies the publisher of the image used to create the virtual machine. Changing this forces a new resource to be created."
  type = string
}

variable "offer" {
  description = "Specifies the offer of the image used to create the virtual machine. Changing this forces a new resource to be created."
  type = string
}

variable "sku" {
  description = "Specifies the SKU of the image used to create the virtual machine. Changing this forces a new resource to be created."
  type = string
}

variable "windows_virtual_machine_version" {
  description = "Specifies the version of the image used to create the virtual machine. Changing this forces a new resource to be created."
  type = string
}


variable "caching" {
  description = "Specifies the caching requirements for the Data Disk. Possible values include None, ReadOnly and ReadWrite."
  type = string
}


variable "admin_username" {
  description = "Specifies the name of the local administrator account."
  type = string
}

variable "admin_password" {
  description = "The password associated with the local administrator account."
  type = string
}

variable "storage_account_type" {
  description = "(Required) The Type of Storage Account which should back this the Internal OS Disk. Possible values are Standard_LRS, StandardSSD_LRS, Premium_LRS, StandardSSD_ZRS and Premium_ZRS. Changing this forces a new resource to be created."
  type = string
}

variable "tags" {
  description = "A mapping of tags to assign to the Public Ip."
  type = map

}