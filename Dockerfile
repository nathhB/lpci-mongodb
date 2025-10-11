FROM mongo:latest

RUN apt-get update
RUN apt-get install pip -y
RUN apt-get install python3.12-venv -y
RUN apt-get install unzip -y
RUN python3 -m venv ./venv
RUN ./venv/bin/pip install gdown
RUN ./venv/bin/gdown 1sUCsauEQ-v9TYIFvnW2dEBQa3kC1UjzF
RUN unzip dump.zip
