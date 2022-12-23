#Global Variables acs730 group 12

output "default_tags" {
  value = {
    "Owner"   = "Group 12"
    "AppName" = "ASA group12 photo"
    "Project" = "ACS730 Project Group 12"
  }
}

output "members" {
  value = ["Albert Badejo", "Sankarnath Suresh", "Arafat Ahmed"]
}

output "region" {
  value = "us-east-1"
}

output "prefix" {
  value = "Group12"
}
