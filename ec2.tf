terraform {
    required_providers{
        aws={
            source="hashicorp/aws"

        }
    }
}
provider"aws"{
    region="ap-northeast-1"
    access_key="AKIA5SE2M7HVVQC3WDOY"
    secret_key="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"
}
resource "aws_instance" "ec2"{
    ami="ami-0ed99df77a82560e6"
    instance_type="t2.micro"
}
output "public_ip"{
    value=aws_instance.ec2.public_ip
}
