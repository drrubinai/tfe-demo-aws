resource "aws_security_group" "sg-00c11fc6eb8b0e3e2" {
     description   = "Security group for AEM author nodes"
     egress        = [
        {
            cidr_blocks      = [
                "0.0.0.0/0",
            ]
            description      = ""
            from_port        = 0
            ipv6_cidr_blocks = []
            prefix_list_ids  = []
            protocol         = "-1"
            security_groups  = []
            self             = false
            to_port          = 0
        },
    ]
     ingress       = []
     name          = "author-aem"
     tags          = {
        "Environment" = "staging"
        "Name"        = "author-aem"
    }
    timeouts {}
}


resource "aws_security_group" "sg-00d1ce1f029fdab2e" {
     description   = "Allow traffic to jmx from Zabbix server"
     egress        = []

     ingress       = [
        {
            cidr_blocks      = [
                "0.0.0.0/0",
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
     name          = "author-aem-jmx"
     tags          = {
        "Environmnet" = "development"
        "Name"        = "author-aem-jmx"
    }

    timeouts {}
}
