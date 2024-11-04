# S3 Static Website Project

This project sets up a static website using Amazon S3 and Terraform. The website is hosted on an S3 bucket configured for static website hosting.

## Overview

This Terraform configuration includes:
- Creation of an S3 bucket for static website hosting.
- Upload of website files (HTML pages).
- Configuration of bucket policies for public access.

## Getting Started

### Prerequisites
- Terraform installed on your machine.
- An AWS account with appropriate permissions to create S3 resources.

### How to Deploy
1. Clone this repository:
   ```bash
   git clone https://github.com/01Engineer/s3-website-project.git
   cd s3-website-project