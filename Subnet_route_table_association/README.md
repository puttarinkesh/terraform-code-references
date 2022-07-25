---
layout: page
permalink: /Azure/Terraform/SubnetRouteTableAssociation/
icon: azure.png
description: Azure Subnet RouteTable Association
status: Ready for Production
type: S04 Connectivity
automation: TerraformModule
onlineTemplateReference: https://docs.microsoft.com/en-us/azure/virtual-network/tutorial-create-route-table-portal
onlineServiceDescription: https://docs.microsoft.com/en-us/azure/virtual-network/manage-route-table
packageId: unknown
buildName: unknown
name: Azure Subnet RouteTable Association with Terraform
title: Azure Subnet RouteTable Association with Terraform
tags:

---
{%- include template_terraform.html -%}

How this Management groups get executed :

1. Connect to truckstop VPN
2. Login from VS code to Azure portal
3. Once the connection is establish your able to login to azure portal from VS code
4. Then Next we use the terraform commmands like, terraform init, terraform validate, terraform plan & terraform apply to create resource in portal.
5. First we need to execute the script in Non-prod.