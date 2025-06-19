run "setup_tests" {
    module {
      source = "./tests/setup"
    }
}

run "create_storage_account" {
    command = apply
    variables {
        resource_group_name = "${run.setup_tests.random_prefix}"
        storage_account_name = "${run.setup_tests.random_prefix}mystorageaccount"
        location = "swedencentral"
        sku = "Standard"
        subscription_id = "16ee6a56-0c33-438c-a7a7-3cd0ebbb36ba"
        tenant_id = "7f5ff716-fc6b-4642-b852-7bf2d8cc025d"
    }

    assert {
      condition = azurerm_storage_account.example.account_replication_type == LRS
      error_message = "This is a false error message"
    }

    # This won't work since it does not reference an object
    # assert {
    #   condition = false
    #   error_message = "This is an error"
    # }

    assert {
      condition = azurerm_storage_account.example.name == "${run.setup_tests.random_prefix}mystorageaccount"
      error_message = "There's an incorrect storage account name"
    }

}