FROM python:3.11

RUN pip install --upgrade pip && \
    pip install fastapi uvicorn httpx pydantic pydantic-settings

WORKDIR /app
COPY src ./src

ENTRYPOINT [ "python", "-m", "src.main" ]
