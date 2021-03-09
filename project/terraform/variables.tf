variable "aws_ami" {
  type        = string
  default     = "ami-0ca5c3bd5a268e7db"
  description = "AWS ami ids"
}
variable "instance_type" {
  type    = string
  default = "t2.micro"
}
