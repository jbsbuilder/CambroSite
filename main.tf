module "s3_Bucket" {
    source = "moudle/s3_Bucket"
    bucket_name = var.domain_name
    index_document = "public/index.html"
    index_error = "public/error.html"
}

resource "aws_s3_bucket_object" "index.html" {
    bucket = module.s3_Bucket.bucket_name
    key = "index.html"
    source = "public/index.html"
    acl
}

resource "aws_s3_bucket_object" "error.html" {
    bucket = module.s3_Bucket.bucket_name
    key = "error.html"
    source = "public/error.html"
    acl = "public-read"
}