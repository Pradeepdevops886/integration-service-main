cd /home/ubuntu/app-deploy && rm -rf /home/ubuntu/app-deploy/* && pwd && ls -ltr 
#deploying the zip file from jenkins workspace to app deploy folder in target environment
cp /var/lib/jenkins/workspace/integration-service/python.zip /home/ubuntu/app-deploy/ && ls -ltr
#list all the files deployed to app deploy folder to verify deployment is done
cd /home/ubuntu/app-deploy && unzip -o python.zip && ls -ltr && rm -rf *.zip  && cd python && ls -ltr