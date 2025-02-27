.. index:: pair: page; Converting an MXNet Model
.. _conv_prep__conv_from_mxnet:

.. meta:: 
   :description: Detailed instructions on how to convert a model from the 
                 MXNet format to the OpenVINO IR by using Model Optimizer. 
   :keywords: Model Optimizer, OpenVINO IR, OpenVINO Intermediate Representation, 
              OpenVINO Development Tools, convert model, model conversion, convert 
              from MXNet, convert an MXNet model, --input_model, convert to 
              OpenVINO IR, conversion parameters, --input_symbol, Apache MXNet loader,
              Apache MXNet, command-line options, --legacy_mxnet_model, 
              pretrained_model_name, ssd gluoncv topologies, convert ssd 
              gluoncv topology, custom layer definition, supported MXNet layers

Converting an MXNet Model
=========================

:target:`conv_prep__conv_from_mxnet_1md_openvino_docs_mo_dg_prepare_model_convert_model_convert_model_from_mxnet` :target:`conv_prep__conv_from_mxnet_1convertmxnet` To convert an MXNet model, run Model Optimizer with the path to the \* ``.params`` \* file of the input model:

.. ref-code-block:: cpp

   mo --input_model model-file-0000.params

.. _mxnet_specific_conversion_params:

Using MXNet-Specific Conversion Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The following list provides the MXNet-specific parameters.

.. ref-code-block:: cpp

   MXNet-specific parameters:
     --input_symbol <SYMBOL_FILE_NAME>
               Symbol file (for example, "model-symbol.json") that contains a topology structure and layer attributes
     --nd_prefix_name <ND_PREFIX_NAME>
               Prefix name for args.nd and argx.nd files
     --pretrained_model_name <PRETRAINED_MODEL_NAME>
               Name of a pre-trained MXNet model without extension and epoch
               number. This model will be merged with args.nd and argx.nd
               files
     --save_params_from_nd
               Enable saving built parameters file from .nd files
     --legacy_mxnet_model
               Enable Apache MXNet loader to make a model compatible with the latest Apache MXNet version.
               Use only if your model was trained with Apache MXNet version lower than 1.0.0
     --enable_ssd_gluoncv
               Enable transformation for converting the gluoncv ssd topologies.
               Use only if your topology is one of ssd gluoncv topologies

.. note:: By default, Model Optimizer does not use the Apache MXNet loader. It transforms the topology to another format which is compatible with the latest version of Apache MXNet. However, the Apache MXNet loader is required for models trained with lower version of Apache MXNet. If your model was trained with an Apache MXNet version lower than 1.0.0, specify the ``--legacy_mxnet_model`` key to enable the Apache MXNet loader. Note that the loader does not support models with custom layers. In this case, you must manually recompile Apache MXNet with custom layers and install it in your environment.





Custom Layer Definition
~~~~~~~~~~~~~~~~~~~~~~~

Internally, when you run Model Optimizer, it loads the model, goes through the topology, and tries to find each layer type in a list of known layers. Custom layers are layers that are not included in the list. If your topology contains such kind of layers, Model Optimizer classifies them as custom.

Supported MXNet Layers
~~~~~~~~~~~~~~~~~~~~~~

For the list of supported standard layers, refer to the :ref:`Supported Framework Layers <doxid-openvino_docs__m_o__d_g_prepare_model__supported__frameworks__layers>` page.

Frequently Asked Questions (FAQ)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Model Optimizer provides explanatory messages when it is unable to complete conversions due to typographical errors, incorrectly used options, or other issues. A message describes the potential cause of the problem and gives a link to :ref:`Model Optimizer FAQ <conv_prep__faq>` which provides instructions on how to resolve most issues. The FAQ also includes links to relevant sections to help you understand what went wrong.

Summary
~~~~~~~

In this document, you learned:

* Basic information about how Model Optimizer works with MXNet models.

* Which MXNet models are supported.

* How to convert a trained MXNet model by using the Model Optimizer with both framework-agnostic and MXNet-specific command-line options.

See Also
~~~~~~~~

:ref:`Model Conversion Tutorials <conv_prep__conv_tutorials>`

