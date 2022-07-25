---
layout: page
permalink: /Azure/Terraform/sql_database/
icon: SQLDatabase.svg 
description: SQL Databse by the Sogeti community
status: Ready for Production
type: S08 Datastores
automation: TerraformModule
onlineTemplateReference: sql_database
onlineServiceDescription: 
packageId: unknown
buildName: unknown
name: SQL Database with Terraform
title: SQL Database with Terraform
tags:
- Azure SQL Database

---

{%- include template_terraform.html -%}

How this Management groups get executed :

1. Connect to truckstop VPN
2. Login from VS code to Azure portal
3. Once the connection is establish your able to login to azure portal from VS code
4. Then Next we use the terraform commmands like, terraform init, terraform validate, terraform plan & terraform apply to create resource in portal.
5. First we need to execute the script in Non-prod.