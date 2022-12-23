# acsfinalproject
Final Project: Two-Tier web application automation with Terraform
------------------------------
How to use this repository

As part of our final project for ACS730 at Seneca College, Ontario, we have created this repository.
You can use this repository to set up a webserver with images on it, running on a load balancer on top of auto scaling group of EC2 instances
--------------------------------
Prerequisites
1. AWS account with sufficient credits ($1.5/day)
2. linux command line configured with terraform configured
--------------------------------
Steps
1. From the s3state folder, run tf apply to set up 3 s3 buckets for dev, prod, staging
2. To deploy the dev instance, navigate to /network/
3. To deploy the staging instance, navigate to staging/network/
4. To deploy the prod instance, navigate to prod/network/