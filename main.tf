#resource group 
resource "azurerm_resource_group" "asmit" {
for_each = var.x

name = each.value.name
location = each.value.location
}


#storage account
resource "azurerm_storage_account" "eststorage" {

  for_each = var.storage_accounts

  name = each.value.name

  resource_group_name = azurerm_resource_group.asmit[
    each.value.resource_group_key
  ].name

  location = azurerm_resource_group.asmit[
    each.value.resource_group_key
  ].location

  account_tier             = each.value.account_tier

  account_replication_type = each.value.account_replication_type

  tags = each.value.tags
}