# Login to Azure using service principal, and set the subscription id, client id, client secret and tenant id
sp-subscription-id = "6fa8eb6f-e2f1-493f-b01d-d47253728c9f"
sp-client-id = "bcd3d7f5-e496-4a47-a747-ea099810bfae"
sp-client-secret = "NBi8Q~niE1LiaSXoNri3GZoCzk023V6ogyjWxb4n"
sp-tenant-id = "7c29afeb-464b-4c17-8dd7-acffefd3ab80"

#name涉及创建全球唯一的DNS Zone服务，所以请修改默认值
name = "dify"
environment = "prod"
location = "eastus2"

#subnet

#================================================================================================
# Networks
#================================================================================================
vnet = "10.11.0.0/16"
subnets = [
  {
    name           = "snet-aks"
    address_prefix = "10.11.1.0/24"
  },
  {
    name           = "snet-appgw"
    address_prefix = "10.11.2.0/24"
  },
  {
    name           = "snet-db"
    address_prefix = "10.11.3.0/24"
  }
]


#redis
# Redis Cache
redis_cache_capacity               = 1
redis_cache_family                 = "C" 
redis_cache_sku                    = "Basic"
redis_public_network_access_enabled= true



# PostgreSQL
pgsql_sku_name                       = "B_Standard_B1ms"
pgsql_admin_login                    = "postgres"
pgsql_admin_password                 = "Test1234t"
pgsql_version                        = "15"
pgsql_storage_mb                     = "32768"
pg_zone                                 = "1"

# aks
kubernetes_version = "1.28.9"
node_count = 1
vm_size = "Standard_D2ds_v5"
max_pods = 110

# path to kubeconfig file
filename = "/Users/tema/.kube/config"

