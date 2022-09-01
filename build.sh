docker build -t qak87/qak87-ci:latest .

if [ "$1" == "--publish" ]; then
  mkdir -p $HOME/.docker/
  echo "${DOCKER_AUTH_CONFIG}" > $HOME/.docker/config.json
  docker push qak87/qak87-ci:latest
  docker tag qak87/qak87-ci:latest qak87/qak87-ci:"${CI_PIPELINE_IID}"
  docker push qak87/qak87-ci:"${CI_PIPELINE_IID}"
fi