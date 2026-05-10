FROM ollama/ollama

ENV OLLAMA_HOST=0.0.0.0:11434

RUN ollama serve & \
    sleep 10 && \
    ollama pull qwen2.5:0.5b

EXPOSE 11434

CMD ollama serve
