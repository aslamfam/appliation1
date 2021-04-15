#This script will create docker image

$version=$BUILD_ID


docker build -t apprepo:$version

aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 898852898285.dkr.ecr.us-east-2.amazonaws.com

docker tag apprepo:$version 898852898285.dkr.ecr.us-east-2.amazonaws.com/apprepo:$version

docker push 898852898285.dkr.ecr.us-east-2.amazonaws.com/apprepo:$version

echo "Image Successfully pushed to ecr"