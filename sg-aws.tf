
resource "aws_security_group" "sg-032021d1ce1f029fdab2e" {
  description = "Allow traffic to jmx from Zabbix server"
  egress      = []

  ingress = [
    {
      cidr_blocks = [
        "127.0.0.1/32",
      ]
      description      = ""
      from_port        = 16302
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "tcp"
      security_groups  = []
      self             = false
      to_port          = 16302
    },
  ]
  name = "author-aem-jmx"
  tags = {
    "Environmnet" = "development"
    "Name"        = "author-aem-jmx"
  }

  timeouts {}
}
