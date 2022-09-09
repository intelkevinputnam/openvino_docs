rm -rf pages/documentation/ecosystem
git clone git@github.com:openvinotoolkit/model_server.git
git clone git@github.com:openvinotoolkit/openvino_tensorflow.git
git clone git@github.com:openvinotoolkit/training_extensions.git
mkdir pages/documentation/ecosystem
mkdir pages/documentation/ecosystem/model-server
cp -rf model_server/docs/* pages/documentation/ecosystem/model-server
cp openvino_tensorflow/README.md pages/documentation/ecosystem/openvino-tensorflow-integration.md
cp training_extensions/OTE_landing_page.md pages/documentation/ecosystem
rm -rf model_server
rm -rf openvino_tensorflow
rm -rf training_extensions