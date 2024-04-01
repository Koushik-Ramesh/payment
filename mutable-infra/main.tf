module "payment" {
  source               = "./vendor/modules/app"
  ENV                  = var.ENV
  COMPONENT            = var.COMPONENT
  SPOT_INSTANCE_TYPE   = var.SPOT_INSTANCE_TYPE
  SPOT_INSTANCE_COUNT  = var.SPOT_INSTANCE_COUNT
  OD_INSTANCE_COUNT    = var.OD_INSTANCE_COUNT
  OD_INSTANCE_TYPE     = var.OD_INSTANCE_TYPE
  APP_PORT             = var.APP_PORT
  APP_VERSION          = var.APP_VERSION
  INTERNAL             = var.INTERNAL
}



# output "data" {
#   value = module.docdb.DOCDB_USERNAME
  
# }


# We cannot parametrize anything that's added in the source
# To limit that, we can use a tool called as Terrafile. All it does is, it clones the remote code fro the specified branch and make it locally available,


