x = {

  dev = {
    name     = "dev-rg"
    location = "Central India"
  }
  test = {
    name     = "test-rg"
    location = "South India"
  }
}

storage_accounts = {

  devstorage = {

    name = "devstorage123456"

    resource_group_key = "dev"

    account_tier             = "Standard"
    account_replication_type = "LRS"

    tags = {
      environment = "dev"
      owner       = "asmit"
    }
  }
    teststorage = {

    name = "eststorage123456"

    resource_group_key = "test"

    account_tier             = "Standard"
    account_replication_type = "GRS"

    tags = {
      environment = "test"
      owner       = "qa-team"
    }
  }
}
