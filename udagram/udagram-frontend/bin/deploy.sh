# Define bucket name and access point
S3_BUCKET_NAME="udagram-frontend-tienbc"
ACCESS_POINT="arn:aws:s3:us-west-2:693133310848:accesspoint/udagram-frontend-tienbc"

# Upload all files in the ./dist directory
aws s3 cp --recursive --acl public-read ./dist s3://$S3_BUCKET_NAME/

# Upload index.html with specific cache control settings
aws s3 cp --acl public-read --cache-control="max-age=0, no-cache, no-store, must-revalidate" ./dist/index.html s3://$S3_BUCKET_NAME/
