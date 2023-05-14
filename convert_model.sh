#!/bin/bash
SZ=13
if [ -n "$1" ]; then
	SZ=$1
fi
python -m transformers.models.llama.convert_llama_weights_to_hf \
    --input_dir llama-dl --model_size ${SZ}B --output_dir llama-hf/${SZ}B
python -m fastchat.model.apply_delta \
    --base-model-path llama-hf/${SZ}B \
    --target-model-path lmsys/vicuna-${SZ}b-v1.1 \
    --delta-path lmsys/vicuna-${SZ}b-delta-v1.1
