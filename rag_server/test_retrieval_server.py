import requests

def query_rag(query, topk=3):
    url = "http://0.0.0.0:5003/retrieve"
    request_data = {
        "queries": [query],
        "topk": topk,
        "return_scores": True
    }
    headers = {
        "Content-Type": "application/json"
    }
    proxies = {
        "http": None,
        "https": None
    }
    try:
        response = requests.post(
            url,
            json=request_data,
            headers=headers,
            proxies=proxies,
            timeout=50
        )
        response.raise_for_status()
        return response.json()
    except Exception as e:
        print(f"Request failed: {e}")

# 示例调用
result = query_rag("What is the capital of France?", topk=3)
print(result)