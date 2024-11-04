#!/bin/bash

# Clone the Hugging Face diffusers repository to get the necessary tools and examples
echo "Cloning Hugging Face diffusers repository..."
git clone https://github.com/huggingface/diffusers /content/diffusers

# Navigate into the diffusers directory and install it in editable mode
echo "Installing diffusers in editable mode..."
pip install -e /content/diffusers

# Move to the specific example directory for Stable Diffusion XL and install additional requirements
echo "Installing additional requirements for SDXL examples..."
cd /content/diffusers/examples/text_to_image && pip install -r requirements_sdxl.txt

# Install bitsandbytes, a library for optimized computation with 8-bit data types
echo "Installing bitsandbytes for optimized computation..."
pip install bitsandbytes

echo "Setup complete. Your environment is ready to run LoRA fine-tuning scripts with diffusers."
