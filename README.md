# Stable Diffusion XL LoRA Fine-Tuning Repository


This repository provides a comprehensive setup and execution guide for fine-tuning Stable Diffusion XL using LoRA (Low-Rank Adaptation) with Hugging Face's Diffusers library. 

This repository provides a comprehensive setup and execution guide for fine-tuning **Stable Diffusion XL using LoRA (Low-Rank Adaptation)** with Hugging Face's Diffusers library. The included setup script, build.sh, automates the environment configuration to streamline your fine-tuning workflow. Once set up, you can run the fine-tuning process with a single command to adapt Stable Diffusion XL to your custom dataset and styles.

## Features
* **Automated Environment Setup**: The build.sh script clones the Diffusers repository, installs it in editable mode, and configures all necessary dependencies, including support for Stable Diffusion XL.
* **LoRA Fine-Tuning Execution**: After setup, initiate LoRA fine-tuning with a predefined command to customize SDXL for your specific image generation tasks.

## Requirements

To follow this guide, you'll need:
- **Google Colab** with access to **NVIDIA L4 GPUs** (available with Colab Pro or Compute Units).
- Basic knowledge of Python and machine learning concepts is helpful but not required.

  This repository contains the following files:

- **SDXL_LoRA_Fine_Tuning.ipynb**: The main Jupyter Notebook, which provides a step-by-step guide to fine-tuning SDXL with LoRA. This notebook is designed to be run in Google Colab.
- **build.sh**: A setup script that installs all required dependencies, including Hugging Face’s `diffusers` library and additional tools for optimized computation.
- **config.yaml**: Configuration file for Hugging Face’s `accelerate` library, which manages resources efficiently during training.

## Setting Up Your Environment

1. **Access the Notebook**: Go to the [SDXL_LoRA_Fine_Tuning.ipynb](https://github.com/davidricardocr/sdxl-lora-fine-tuning/tree/main) notebook in the GitHub repository. Click "Open in Colab" to launch it in Google Colab.
   
2. **Select GPU**: Ensure that your Colab environment is connected to an **NVIDIA L4 GPU** for optimal performance. You can access L4 GPUs through a Colab Pro subscription or by purchasing Compute Units.

3. **Run the `build.sh` Script**: Once connected to the GPU, run the `build.sh` script in the notebook to automatically install dependencies and configure the environment.

4. **Configure Accelerate**: The `config.yaml` file includes key settings for Hugging Face’s `accelerate` library, which manages GPU resources and optimizes memory usage. This configuration aligns with the hardware available in Google Colab and ensures a stable training environment.

## Fine-Tuning with LoRA

With the environment set up, you're ready to start fine-tuning:
1. Execute the `train_text_to_image_lora_sdxl.py` script provided in the `diffusers` library. This script uses LoRA fine-tuning to customize SDXL with your dataset.
2. Adjust training parameters in the script (e.g., `learning_rate`, `num_train_epochs`, `resolution`) to match your project’s requirements.

For a detailed explanation of each parameter, refer to the documentation provided in the notebook.

## Using Your Fine-Tuned Model

After completing the fine-tuning process, load the resulting LoRA weights into the Stable Diffusion XL pipeline to generate customized images. The notebook includes sample code to demonstrate how to load the weights and generate images based on specific prompts.

## Using Your Own Dataset

If you'd like to fine-tune SDXL with a custom dataset:
1. Create a folder (e.g., `/Content/my-dataset/`) containing all images in PNG or JPG format.
2. Include a `metadata.jsonl` file with captions for each image, structured as follows:
   ```json
   { "file_name": "example.png", "text": "Description of the image content." }

To use this dataset, replace `--dataset_name` with `--train_data_dir="/path/to/your/image-folder"` in the script, ensuring it references your local image directory.
