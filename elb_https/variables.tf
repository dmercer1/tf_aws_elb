//
// Module: tf_aws_elb/elb_https
//

// Module specific variables

variable "elb_name" {}

variable "elb_is_internal" {
  description = "Determines if the ELB is internal or not"
  default = false
  // Defaults to false, which results in an external IP for the ELB
}

variable "elb_security_group" {}

// See README.md for details on finding the
// ARN of an SSL certificate in EC2
variable "ssl_certificate_id" {
  description = "The ARN of the SSL Certificate in EC2"
}

variable "subnet_az1" { }
variable "subnet_az2" { }

variable "backend_port" {
  description = "The port the service on the EC2 instances listens on"
}

variable "backend_protocol" {
 description = "The protocol the backend service speaks"
 // Possible options are
 // - http
 // - https
 // - tcp
 // - ssl (secure tcp)
}

variable "health_check_target" {
  description = "The URL the ELB should use for health checks"
  // This is primarily used with `http` or `https` backend protocols
  // The format is like `HTTPS:443/health`
}

variable "idle_timeout" {
  description = "The timeout interval"
  default = 60
}
