.. index:: pair: page; DL Workbench Key Concepts
.. _workbench_resources__key_concepts:

.. meta::
   :description: List containing OpenVINO Deep Learning Workbench main concepts.
   :keywords: OpenVINO, Deep Learning Workbench, DL Workbench, Resources, key concepts, 
              main concepts, Intermediate Representation, OpenVINO IR, FP32, FP16, INT8, 
              model task, dataset, local target, NCS2, OpenVINO Runtime


DL Workbench Key Concepts
=========================

:target:`workbench_resources__key_concepts_1md_openvino_workbench_docs_workbench_dg_key_concepts` This page contains 
the main concepts of the OpenVINO™ DL Workbench.

Project
~~~~~~~

Project is a combination of an OpenVINO IR model, a dataset, and a target device you use to perform experiments 
in the DL Workbench. You can work with multiple projects during one session. When 
:ref:`creating a project <dl_workbench__get_started>`, you can:

* Upload your own model or download one from the Intel® [Open Model Zoo](omz_models_group_intel) directly in the DL Workbench.

* Upload your own dataset or generate one in the DL Workbench.

* Select your local workstation as a target or connect to a remote machine.

Intermediate Representation (IR)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Intermediate Representation (IR) is the OpenVINO™ format of pretrained model representation with two files:

* XML file describing the network topology

* BIN file containing weights and biases
  
=
  OpenVINO™ Runtime operates with models in the IR format. You can convert your model of a supported format into 
  the IR format with the :ref:`Model Optimizer <conv_prep__conv_with_model_optimizer>` directly in the DL Workbench.

Original Model
~~~~~~~~~~~~~~

Original model is your custom pretrained model in one of the supported formats: OpenVINO™ IR, Caffe, MXNet, ONNX, or TensorFlow.

Model Task
~~~~~~~~~~

Model task is the problem the model was trained to solve:

* `Classification <https://paperswithcode.com/task/image-classification>`__ is a task of defining a category for an image.

* `Object detection <https://machinelearningmastery.com/object-recognition-with-deep-learning/>`__ is a task of identifying instances of objects of a certain class and highlighting them with bounding boxes.

* `Instance segmentation <https://paperswithcode.com/task/instance-segmentation>`__ is a task of identifying instances of objects of a certain class and highlighting them with masks.

* `Semantic segmentation <https://paperswithcode.com/task/semantic-segmentation>`__ is a task of detecting all object types in an image at the pixel level and highlighting them as regions.

* `Image Inpainting <https://paperswithcode.com/task/image-inpainting>`__ is a task of reconstructing missing areas in an image.

* `Super-Resolution <https://paperswithcode.com/task/super-resolution>`__ is a task of enhancing the image resolution.

* `Style Transfer <https://paperswithcode.com/task/style-transfer>`__ is a task of adopting the appearance of another image.

* `Facial Landmark Detection <https://paperswithcode.com/task/facial-landmark-detection>`__ is a task of detecting key landmarks of a face, such as eyes, nose, and mouth.

* `Face Recognition <https://paperswithcode.com/task/face-recognition>`__ is a task of identifying a person based on an image of their face.

Model Precision
~~~~~~~~~~~~~~~

Model precision is the type of variables used to store model weights:

* FP32 - 32-bit floating point numbers

* FP16 - 16-bit floating point numbers

* INT8 - 8-bit integer numbers
  
  Usually a model has a mix of precisions. When converting a model, you have to choose between FP32 and FP16. FP16 
  is supported by all OpenVINO™ plugins while keeping good accuracy and speed gains over FP32.

Dataset
~~~~~~~

Dataset is a set of testing and validation images with annotations. Dataset format depends on a task a model is trained 
to perform.

Target
~~~~~~

Target is a system on which you want to perform an inference of your model. This can be your local workstation or 
a remote system.

Local Target
~~~~~~~~~~~~

Local target is the machine on which you run the DL Workbench.

Remote Target
~~~~~~~~~~~~~

Remote target is a machine in your local network to which you connect your local workstation to 
:ref:`gather performance data remotely <doxid-workbench_docs__workbench__d_g__remote__profiling>`.

Device
~~~~~~

Device is a hardware accelerator on which a model is executed, for example, Intel® Movidius™ Neural Compute Stick 2 (NCS2).

Profiling
~~~~~~~~~

Profiling is analysis of neural network performance to explore areas where optimization can be applied.

Throughput
~~~~~~~~~~

Throughput is the number of images processed in a given amount of time. Measured in frames per second (FPS).

Latency
~~~~~~~

Latency is the time required to complete a unit of work, for example, time required to perform an inference 
for a single image. Measured in milliseconds.

OpenVINO™ Runtime
~~~~~~~~~~~~~~~~~~~

OpenVINO™ Runtime is a set of C++ libraries providing a common API to deliver inference solutions on the platform 
of your choice: CPU, GPU, or VPU. OpenVINO™ :ref:`OpenVINO™ Runtime <deploy_infer__openvino_runtime_user_guide>` 
is used inside the DL Workbench to infer models.

Accuracy
~~~~~~~~

Accuracy is the quality of predictions made by a neural network. Different use cases measure quality differently, 
so an accuracy metric depends on a particular model task.

Calibration
~~~~~~~~~~~

Calibration is the process of lowering the precision of a model from FP32 to INT8. Calibration accelerates the 
performance of certain models on hardware that supports INT8 precision. An INT8 model takes up less memory footprint 
and speeds up inference time at the cost of a small reduction in accuracy. See 
:ref:`INT8 Calibration <workbench_guide__quantization>` for details.

Deployment
~~~~~~~~~~

Deployment is the process of putting your model into a real-life application. DL Workbench enables you to download 
a deployment package with your model optimized for particular devices, including required libraries, API, and scripts. 
See :ref:`Build Your Application with Deployment Package <workbench_guide__deployment_package>` 
for details.

Deployment Target
~~~~~~~~~~~~~~~~~

Deployment target is the target on which you plan to run a product application, so you perform calibration and tune 
runtime hyperparameters for this particular target.

