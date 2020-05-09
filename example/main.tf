provider "aws" {
  region = "us-east-1"
}


module "es" {
  source  = "git::https://github.com/terraform-community-modules/tf_aws_elasticsearch.git?ref=v1.1.0"

  domain_name                    = "my-elasticsearch-domain"
  management_public_ip_addresses = ["171.76.86.180"]
  instance_count                 = 2
  instance_type                  = "t2.medium.elasticsearch"
  dedicated_master_type          = true
  es_zone_awareness              = true
  ebs_volume_size                = 30
}

