.. index:: pair: page; Tutorial Natural Language Processing Model
.. _workbench_tutorial__nlp:

.. meta::
   :description: Tutorial on how to import, analyze and benchmark BERT Natural Language Processing 
                 model with OpenVINO Deep Learning Workbench.
   :keywords: OpenVINO, Deep Learning Workbench, DL Workbench, tutorial, BERT, Natural Language Processing, 
              model, import, analyze, benchmark, nlp, Intermediate Representation, tokenizer, deployment package


Tutorial Natural Language Processing Model
==========================================

:target:`workbench_tutorial__nlp_1md_openvino_workbench_docs_workbench_dg_import_nlp` The tutorial shows how to import 
an original `Bert model <https://huggingface.co/bhadresh-savani/distilbert-base-uncased-emotion>`__ of text classification 
use case, and `ONNX <https://onnx.ai>`__ framework.

.. list-table::
    :header-rows: 1

    * - Model
      - Use Case
      - Framework
      - Source
      - Dataset
    * - `distilbert-base-uncased-emotion <https://huggingface.co/bhadresh-savani/distilbert-base-uncased-emotion>`__
      - `Text Classification <https://huggingface.co/tasks/text-classification>`__
      - `ONNX <https://onnx.ai/>`__
      - `Huggingface <https://huggingface.co/bhadresh-savani/distilbert-base-uncased-emotion>`__
      - `CoLa <https://nyu-mll.github.io/CoLA/>`__

In this tutorial, you will learn how to:

#. Import the model.

#. Import the dataset.

#. Analyze the model inferencing performance.

#. Import tokenizer.

#. Create deployment package with the model.

Import the model
~~~~~~~~~~~~~~~~

.. dropdown:: Import NLP model
   :open:

   On the **Create Project** page click **Import Model**. Select Original Model tab, and specify NLP domain and ONNX framework.

   Select and upload .onnx model file and click Import:

   .. image:: _static/images/import_model_nlp.png

   To work with OpenVINO tools, you need to obtain a model in Intermediate Representation (IR) format. IR is the OpenVINO format of pre-trained model representation with two files:

   * XML file describing the network topology
   * BIN file containing weights and biases

   On the fourth step, you need to configure model inputs.

   Layout describes the value of each dimension of input tensors. To configure model layout, set NC layout. N is the size of a batch showing how many text samples the model processes at a time. C is the maximum length of text (in tokens) that our model can process.

   Specify 1 batch and 128 channels (tokens) for each input. Click Validate and Import:

   .. image:: _static/images/inputs.png

   When the model is successfully imported, you will see it on the Create Project page. Click on the model to select it and proceed to the Next Step.

   **Select Environment**

   On the Select Environment page you can choose a hardware accelerator on which the model will be executed. We will analyze our model on a CPU since we have only this device available. Proceed to the Next Step.

Import the dataset
~~~~~~~~~~~~~~~~~~

.. dropdown:: Upload Text Dataset
   :open:

   Import Dataset
   Validation of the model is always performed against specific data combined into datasets. You will need to obtain the data to work with the model. The data depends on the task for which the model has been trained.

   On the Select Validation Dataset page, click Import Text Dataset.

   .. image:: _static/images/import_text_dataset.png

   Download an example CoLa dataset from **Dataset Info** tip and upload it to the DL Workbench.

   .. image:: _static/images/download_cola.png

   Upload the dataset file.

   .. image:: _static/images/dataset.png

   The dataset has a UTF-8 encoding and Comma as separator. In the Raw Dataset Preview you can see that our dataset Has Header. The dataset will be used for the Text Classification task type and contains the text in the Column 1, labels in the Column 2.

   Make sure the dataset is displayed correctly in the Formatted Dataset Preview and click **Import**.

Analyze the model inferencing performance
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. dropdown:: Measure inferencing performance and learn about streams and batches
   :open:

   When the baseline inference stage is finished, we can see the results of running our model on the CPU. We are interested in two metrics: **latency** and **throughput**. 

   - Latency is the time required to process one text sample. The lower the value, the better. 
   - Throughput is the number of samples processed per second. Higher throughput value means better performance.

   .. image:: _static/images/performance_nlp.png

   **Streams** are the number of instances of your model running simultaneously, and **batches** are the number of input data instances fed to the model.  

   DL Workbench automatically selects the parameters to achieve a near-optimal model performance. You can further accelerate your model by configuring the optimal parameters specific to each accelerator.

   Under the table with results you see a hint saying the model was inferred on the autogenerated data. To infer the model on the text dataset, you need to use a tokenizer. Click **Select Tokenizer** link in the hint and then **Import Tokenizer** button.

Import Tokenizer
~~~~~~~~~~~~~~~~

.. dropdown:: Import and Select Tokenizer

   To benchmark your model on the text dataset, you need to import a tokenizer. Tokenizers are used to convert text to numerical data because the model cannot work with the text directly. Tokenizer splits text into tokens. A token can be a word, part of a word, a symbol, or a couple of symbols. Then tokenizer replaces each token with the corresponding index and stores the map between tokens and indices.

   A tokenizer is defined before the training and depends on the model. DL Workbench supports two types of tokenizers: WordPiece and Byte-Pair Encoding (BPE). 

   .. image:: _static/images/import_tokenizer.png

   On the tokenizer import page: 
   - Select tokenizer type 
   - Upload tokenizer file: vocab.txt file for WordPiece 
   - Specify whether the conversion to lowercase is required - Click Import

   .. image:: _static/images/tokenizer_fill.png

   Select a tokenizer by clicking on it. Make sure it is displayed as the **Selected Tokenizer**:

   .. image:: _static/images/select_tokenizer.png

   Select **Perform**, open **Explore Inference Configurations** tab and infer the model on the imported dataset.

Create deployment package with the model
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. dropdown:: Prepare a runtime for your application

   OpenVINO allows to obtain a customized runtime to prepare an application for production. Open **Create Deployment Package** tab and include the necessary components to get a snapshot of OpenVINO runtime ready for deployment into a business application.

   .. image:: _static/images/pack.png

See Also
~~~~~~~~

Congratulations! You have completed the DL Workbench workflow for NLP model. Additionally, you can try the following capabilities:

* :ref:`Learn OpenVINO CLI and API in Jupyter Notebooks <workbench_guide__jupyter_cli>`

* :ref:`Explore inference configurations <doxid-workbench_docs__workbench__d_g__run__single__inference>`

* :ref:`Write sample application with your model using OpenVINO Python or C++ API <workbench_deployment__deploy_and_integrate_performance_criteria_into_app>`

* :ref:`Analyze and visualize model structure <doxid-workbench_docs__workbench__d_g__visualize__model>`

