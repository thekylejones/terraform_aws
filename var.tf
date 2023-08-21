variable "AWS_REGION" {    
    default = "us-east-2"
}

variable "server_port" {
	description = "The port the server will use for HTTP requests"
	type = number
}