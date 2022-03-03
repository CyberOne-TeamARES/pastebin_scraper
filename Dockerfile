FROM python:3.8.0-buster
WORKDIR /pastebin_scraper

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install git 
RUN git clone https://github.com/Critical-Start/pastebin_scraper.git /pastebin_scraper
COPY settings.py /pastebin_scraper
RUN pip3 install -r /pastebin_scraper/requirements.txt 

ENTRYPOINT ["python3", "/pastebin_scraper/pastebin_scraper.py"]
