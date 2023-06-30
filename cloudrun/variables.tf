variable "name" {
  type = string
  description = "Name of the cloud run"
}

variable "location" {
    type = string
    description = "The project location"
  
}

variable "image" {
  type = string
  description = "Image for the cloiud run"

}