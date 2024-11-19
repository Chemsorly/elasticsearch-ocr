FROM docker.elastic.co/elasticsearch/elasticsearch:8.15.4
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch ingest-attachment
USER 0
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y tesseract-ocr tesseract-ocr-deu tesseract-ocr-eng
USER 1000
