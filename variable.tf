variable "x" {

  type = map(object({
    name     = string
    location = string
  }))
}

variable "storage_accounts" {

  type = map(object({

    name                     = string
    resource_group_key       = string

    account_tier             = string
    account_replication_type = string

    tags = map(string)

  }))
}