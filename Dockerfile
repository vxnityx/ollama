FROM ollama/ollama

RUN ollama serve & \
    sleep 10 && \
    ollama pull qwen2.5:0.5b

EXPOSE 11434

CMD ["ollama", "serve"]
