---
layout: page
permalink: /Azure/Terraform/mssql_server/
title: MSSQLServer
icon: azure.png
description: MSSQL Server by the Sogeti community
status: Ready for Production
type: S08 Datastores
automation: TerraformModule
onlineTemplateReference: 
onlineServiceDescription: 
packageId: unknown
buildName: unknown
name: MSSQL Server with Terraform
title: MSSQL Server with Terraform
tags:
- Azure MSSQL Server
---
{%- include template_terraform.html -%}

How this Management groups get executed :

1. Connect to truckstop VPN
2. Login from VS code to Azure portal
3. Once the connection is establish your able to login to azure portal from VS code
4. Then Next we use the terraform commmands like, terraform init, terraform validate, terraform plan & terraform apply to create resource in portal.
5. First we need to execute the script in Non-prod.