module "keypair" {
    source = "../Modules/keypair"
    pem_file_name = "qakeytest.pem"
    the_key_name = "qatest"
   # pem_file_permission = 600
  
}