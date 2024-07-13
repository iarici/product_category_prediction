FROM python:3.10

WORKDIR /jupyter-case

COPY . /jupyter-case

RUN apt-get update && \
    apt-get install -y python3.10 \
    python3-pip

RUN pip install --upgrade pip

RUN pip install --no-cache-dir -r requirements.txt

RUN pip install jupyter

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]
