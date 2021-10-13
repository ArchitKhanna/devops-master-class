variable "users" {
  default = {
    Julie : "US",
    Jimothy : "UK",
    John : "AU"
  }
}

variable "usermaps" {
  default = {
    Julie : { country : "US", department : "Dev" },
    Jimothy : { country : "UK", department : "HR" },
    John : { country : "AU", department : "Acc" }
  }
}
