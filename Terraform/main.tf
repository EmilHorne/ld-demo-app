// Terraform file for setting up flags for the React QR App demo.
// You DON'T need to edit this file unless you're changing or creating
// default flag configurations. 
//
// If you just want to run this file to create the flags, then:
// 1. Edit the .tfvars file to add your project key and an API access token.
// 2. Ensure that you have Terraform installed.
// 3. Run: terraform plan -var-file=".tfvars"
// 4. Assuming you got no errors from step 3, run: terraform apply -var-file=".tfvars"
// 5. Go check out your new flags!

terraform {
  required_providers {
    launchdarkly = {
      source  = "launchdarkly/launchdarkly"
    }
  }
}

variable "access_token" {
  type = string
}

variable "project_key" {
  type = string
}

provider "launchdarkly" {
  access_token = var.access_token
}

resource "launchdarkly_project" "terraform" {
  key  = var.project_key
  name = "Interactive React Demo"

  tags = [
    "terraform",
  ]

  environments {
        key   = "dev"
        name  = "Development"
        color = "7B42BC"
        tags  = ["terraform"]
  }
  default_client_side_availability {
    using_environment_id = true
    using_mobile_key     = false
  }
}

resource "launchdarkly_feature_flag" "qrcode" {
  project_key = launchdarkly_project.terraform.key
  key         = "qrcode"
  name        = "QR Code"
  description = "This flag enables the view of the QR Code on our application canvas for mobile device viewing"

  variation_type = "boolean"
  variations {
    value       = "true"
    name        = "QR Code On"
    description = "Show the QR Code"
  }
  variations {
    value       = "false"
    name        = "QR Code Off"
    description = "Disable the QR Code for mobile device viewing "
  }
  
  defaults {
    on_variation = 0
    off_variation = 1
  }

  tags = [
    "terraform-managed"
  ]
}

resource "launchdarkly_feature_flag" "logoversion" {
  project_key = launchdarkly_project.terraform.key
  key         = "logoversion"
  name        = "Logo Version"
  description = "This flag controls which logo is visible within the application"

  variation_type = "boolean"
  variations {
    value       = "true"
    name        = "Show Toggle Logo"
    description = "Toggle makes their grand appearance!"
  }
  variations {
    value       = "false"
    name        = "Default LaunchDarkly Logo"
    description = "Shows the default LaunchDarkly Osmo logo"
  }
  
  defaults {
    on_variation = 0
    off_variation = 1
  }

  tags = [
    "terraform-managed",   
  ]
}

resource "launchdarkly_feature_flag" "cardshow" {
  project_key = launchdarkly_project.terraform.key
  key         = "cardshow"
  name        = "Release Cards"
  description = "This flag controls the visibility of the release cards on the bottom of the UI "

  variation_type = "boolean"
  variations {
    value       = "true"
    name        = "Show Release Cards"
    description = "Show the app delivery release cards"
  }
  variations {
    value       = "false"
    name        = "Disable Card Views"
    description = "Do not show the release cards "
  }
  
  defaults {
    on_variation = 0
    off_variation = 1
  }

  tags = [
    "terraform-managed",   
  ]
}

resource "launchdarkly_feature_flag" "upperimage" {
  project_key = launchdarkly_project.terraform.key
  key         = "upperimage"
  name        = "Upper Image"
  description = "Show the upper image on page"

  variation_type = "boolean"
  variations {
    value       = "true"
    name        = "Show Image"
    description = "Display the image"
  }
  variations {
    value       = "false"
    name        = "Disable Image"
    description = "Disable the image from being viewed "
  }
  
  defaults {
    on_variation = 0
    off_variation = 1
  }

  tags = [
    "terraform-managed",   
  ]
}

resource "launchdarkly_feature_flag" "login" {
  project_key = launchdarkly_project.terraform.key
  key         = "login"
  name        = "Login UI"
  description = "Show the login box for user targeting"

  variation_type = "boolean"
  variations {
    value       = "true"
    name        = "Login enabled"
    description = "Login box presented"
  }
  variations {
    value       = "false"
    name        = "Login Disabled"
    description = "Not able to login "
  }
  
  defaults {
    on_variation = 0
    off_variation = 1
  }

  tags = [
    "terraform-managed",   
  ]
}

resource "launchdarkly_feature_flag" "prodHeader" {
  project_key = launchdarkly_project.terraform.key
  key         = "prodHeader"
  name        = "Production Header"
  description = "Enables the production header view in the UI"

  variation_type = "boolean"
  variations {
    value       = "true"
    name        = "Show New Header Design"
    description = "Show the updated LaunchDarkly header"
  }
  variations {
    value       = "false"
    name        = "Show Old Header Design"
    description = "Displays header showing common app delivery "
  }
  
  defaults {
    on_variation = 0
    off_variation = 1
  }

  tags = [
    "terraform-managed",   
  ]
}

resource "launchdarkly_feature_flag" "bannerstring" {
  project_key = launchdarkly_project.terraform.key
  key         = "bannerstring"
  name        = "Customize Banner Text"
  description = "Inject custom text into the header banner image on the page"

  variation_type = "string"
  variations {
    value       = "to stress-free SDLC"
    name        = "custom text"
    description = "Input text to inject on the page"
  }
  variations {
    value       = "off"
    name        = "default text"
    description = "Special value that routes to default code path"
  }
  
  defaults {
    on_variation = 0
    off_variation = 1
  }

  tags = [
    "terraform-managed",   
  ]
}