terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

locals {
    config = jsondecode(file("${path.module}/config.json"))
}

resource "aws_iam_role" "trigger_role" {
    # TODO: write
}

resource "aws_iam_role_policy" "trigger_policy" {
    # TODO: write
}

# https://gist.github.com/smithclay/e026b10980214cbe95600b82f67b4958
data "archive_file" "function_zip" {
    # TODO: write
}

resource "aws_lambda_function" "newsletter_function" {
    # TODO: write
}

resource "aws_cloudwatch_event_rule" "newsletter_trigger" {
    name = "newsletter_trigger"
    role_arn = "" # TODO: fill in
    schedule_expression = local.config.cron
}