provider "google" {
  project = var.project
  credentials = file("/Users/okurylo/Downloads/jenkins-homework-11adefa943fb.json")
}
provider "google-beta" {
  project = var.project
  credentials = file("/Users/okurylo/Downloads/jenkins-homework-11adefa943fb.json")
}
provider "null" {

}

variable "project" {
    type = string
    default = "jenkins-homework"
}

// resource "null_resource" "example" {
//     name = "example"
// }

// module "jenkins" {
//   source  = "terraform-google-modules/jenkins/google"
//   version = "1.1.0"
//   # insert the 8 required variables here
//   jenkins_instance_network = "jnet"
//   jenkins_instance_subnetwork = "jsubnet"
//   jenkins_instance_zone= "us-central1-c"
//   jenkins_workers_network = "jworknet"
//   jenkins_workers_project_id = "jenkins-homework"
//   jenkins_workers_region = "us-central1"
//   project_id = "jenkins-homework"
//   region = "us-central1"
// }

