## Install 
```python 
uv venv --python 3.10
source .venv/bin/activate
bash install.sh
uv pip install --no-build-isolation flash-attn==2.7.4.post1
```

check following dependencies
```
+ PyTorch: 2.6.0+cu124
+ CUDA: 12.4
+ Flash Attenttion: 2.7.4.post1
+ vLLM: 0.8.5
```

### Download model
```python
import os
os.environ['HF_HOME'] = '~/.cache/huggingface/hub/'
import transformers
transformers.pipeline('text-generation', model='Qwen/Qwen3-4B')
```

### Preprocess data
```python 
python rag_server/data_process/nq_search.py
```

### Prepare the RAG Server
```bash
save_path=corpus
python rag_server/download.py --save_path $save_path
cat $save_path/part_* > $save_path/e5_Flat.index
gzip -d $save_path/wiki-18.jsonl.gz
```
```bash
bash rag_server/launch.sh
```
