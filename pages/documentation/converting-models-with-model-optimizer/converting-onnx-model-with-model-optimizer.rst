.. index:: pair: page; Converting an ONNX Model
.. _conv_prep__conv_from_onnx:

.. meta:: 
   :description: Detailed instructions on how to convert a model from the 
                 ONNX format to the OpenVINO IR by using Model Optimizer. 
   :keywords: Model Optimizer, OpenVINO IR, OpenVINO Intermediate Representation, 
              OpenVINO Development Tools, convert model, model conversion, convert 
              from ONNX, convert an ONNX model, deep learning model, --input_model, 
              supported ONNX layers, ONNX layers

Converting an ONNX Model
========================

:target:`conv_prep__conv_from_onnx_1md_openvino_docs_mo_dg_prepare_model_convert_model_convert_model_from_onnx`

Introduction to ONNX
~~~~~~~~~~~~~~~~~~~~

`ONNX <https://github.com/onnx/onnx>`__ is a representation format for deep learning models that allows AI developers to easily transfer models between different frameworks. It is hugely popular among deep learning tools, like PyTorch, Caffe2, Apache MXNet, Microsoft Cognitive Toolkit, and many others.

.. _Convert_From_ONNX:

Converting an ONNX Model
~~~~~~~~~~~~~~~~~~~~~~~~

This page provides instructions on how to convert a model from the ONNX format to the OpenVINO IR format using Model Optimizer. To use Model Optimizer, install OpenVINO Development Tools by following the `installation instructions <https://docs.openvino.ai/latest/openvino_docs_install_guides_install_dev_tools.html>`__.

The Model Optimizer process assumes you have an ONNX model that was directly downloaded from a public repository or converted from any framework that supports exporting to the ONNX format.

To convert an ONNX model, run Model Optimizer with the path to the input model ``.onnx`` file:

.. ref-code-block:: cpp

	mo --input_model <INPUT_MODEL>.onnx

There are no ONNX specific parameters, so only framework-agnostic parameters are available to convert your model. For details, see the *General Conversion Parameters* section in the :ref:`Converting a Model to Intermediate Representation (IR) <conv_prep__set_input_shapes>` guide.

Supported ONNX Layers
~~~~~~~~~~~~~~~~~~~~~

For the list of supported standard layers, refer to the :ref:`Supported Framework Layers <doxid-openvino_docs__m_o__d_g_prepare_model__supported__frameworks__layers>` page.

Additional Resources
~~~~~~~~~~~~~~~~~~~~

See the :ref:`Model Conversion Tutorials <conv_prep__conv_tutorials>` page for a set of tutorials providing step-by-step instructions for converting specific ONNX models. Here are some examples:

* :ref:`Convert ONNX Faster R-CNN Model <conv_prep__onnx_faster_rcnn>`

* :ref:`Convert ONNX GPT-2 Model <conv_prep__onnx_gpt2>`

* :ref:`Convert ONNX Mask R-CNN Model <conv_prep__onnx_mask_rcnn>`

