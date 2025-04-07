from alpine:latest

# Utilities
RUN apk update && apk add \
    python3 \
    python3-dev \
    
    && apk upgrade
    
RUN python3 -m venv /venv
ENV PATH="/venv/bin:$PATH"

CMD ["python3", "hello.py"]