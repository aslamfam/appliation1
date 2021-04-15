#This script will create docker image
docker build -t testrepo .
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 898852898285.dkr.ecr.us-east-2.amazonaws.com
docker tag testrepo:latest 898852898285.dkr.ecr.us-east-2.amazonaws.com/testrepo:latest
docker push 898852898285.dkr.ecr.us-east-2.amazonaws.com/testrepo:latest
echo "Image Successfully pushed to ecr"
