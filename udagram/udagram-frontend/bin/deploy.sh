aws s3 cp --recursive --acl public-read ./dist s3://arn:aws:s3:us-west-2:693133310848:accesspoint/myawsbucket/
aws s3 cp --acl public-read --cache-control="max-age=0, no-cache, no-store, must-revalidate" ./dist/index.html s3://arn:aws:s3:us-west-2:693133310848:accesspoint/myawsbucket/
