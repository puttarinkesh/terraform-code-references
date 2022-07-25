
variable "mssqlserverid" {
  description = "MS SQL Server Id"
}
variable "applicationname" {
  description = "Name of the applicationname"
  type        = string
}
variable "env" {
  description = "Name of the environment"
  type        = string
}

variable "collation" {
  description = "(Optional) Specifies the collation of the database. Changing this forces a new resource to be created."
  type        = string
  default     = "SQL_Latin1_General_CP1_CI_AS"
}

variable "license_type" {
  description = "(Optional) Specifies the license type applied to this database. Possible values are LicenseIncluded and BasePrice."
  type        = string
  default     = "LicenseIncluded"
}

variable "max_size_gb" {
  description = "(Optional) A list of email addresses which alerts should be sent to."
  type        = number
  default     = 4
}

variable "read_scale" {
  description = "(Optional) If enabled, connections that have application intent set to readonly in their connection string may be routed to a readonly secondary replica. This property is only settable for Premium and Business Critical databases."
  type        = bool
  default     = true
}

variable "sku_name" {
  description = "(Optional) Specifies the name of the SKU used by the database. For example, GP_S_Gen5_2,HS_Gen4_1,BC_Gen5_2, ElasticPool, Basic,S0, P2 ,DW100c, DS100. Changing this from the HyperScale service tier to another service tier will force a new resource to be created."
  type        = string
  default     = "S0"
}

variable "zone_redundant" {
  description = "(Optional) Whether or not this database is zone redundant, which means the replicas of this database will be spread across multiple availability zones. This property is only settable for Premium and Business Critical databases."
  type        = bool
  default     = true
}


variable "tags" {
  description = "Map of tags to add to create resources"
  type        = map(string)
  default     = {}
}

variable "retention_days" {
  description = "Required) The week of year to take the yearly backup. Value has to be between 1 and 52."
  type        = number
  default     = 35
}


variable "weekly_retention_policy" {
  description = "(Optional) The weekly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 to 520 weeks. e.g. P1Y, P1M, P1W or P7D."
  type        = string
  default     = "P1Y"
}

variable "week_of_year_policy" {
  description = "Required) The week of year to take the yearly backup. Value has to be between 1 and 52."
  type        = number
  default     = 1
}

