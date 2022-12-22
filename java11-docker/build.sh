docker build -t ghcr.io/qak87/qkon-general-ci:latest .

if [ "$1" == "--publish" ]; then
  docker push ghcr.io/qak87/qkon-general-ci:latest
#  docker tag qak87/qak87-ci:latest qak87/qak87-ci:"${CI_PIPELINE_IID}"
#  docker push qak87/qak87-ci:"${CI_PIPELINE_IID}"
fi