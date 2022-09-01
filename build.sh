docker build -t qak87/qak87-ci:latest .

if [ "$1" == "--publish" ]; then
  docker login -u qak87 -p ${DOCKERHUB_PASS}
  docker push qak87/qak87-ci:latest
  docker tag qak87/qak87-ci:latest qak87/qak87-ci:"${CI_PIPELINE_IID}"
  docker push qak87/qak87-ci:"${CI_PIPELINE_IID}"
fi