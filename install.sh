uv pip install accelerate bitsandbytes datasets deepspeed==0.16.4 einops isort jsonlines loralib optimum packaging peft pynvml>=12.0.0 ray[default]==2.42.0 tensorboard torch==2.6.0 torchmetrics tqdm transformers==4.48.3 transformers_stream_generator wandb wheel
uv pip install vllm==0.8.5
uv pip install "qwen-agent[code_interpreter]"
uv pip install llama_index bs4 pymilvus infinity_client codetiming tensordict==0.6 omegaconf torchdata==0.10.0 hydra-core easydict dill python-multipart
uv pip install -e .
uv pip install faiss-gpu
uv pip install -U mcp