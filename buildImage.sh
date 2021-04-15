#This script will create docker image
$version=$BUILD_ID
docker build -t apprepo:v7 .
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 898852898285.dkr.ecr.us-east-2.amazonaws.com
docker tag apprepo:v7 898852898285.dkr.ecr.us-east-2.amazonaws.com/apprepo:v7
docker push 898852898285.dkr.ecr.us-east-2.amazonaws.com/apprepo:v7
echo "Image Successfully pushed to ecr"
