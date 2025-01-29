location            = "uksouth"
resource_group_name = "rg-terraform-demo-website"
common_tags = {
  "environment" = "demo"
}
storage_account_name = "sademowebsite280125"
index_document       = "index.html"
source_content       = "<h1> Hello World! </h1>"
