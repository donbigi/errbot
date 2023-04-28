FROM python:3.9-slim
WORKDIR /workspaces/yourbot
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
COPY config.py config.py
RUN errbot --init
CMD ["errbot"]