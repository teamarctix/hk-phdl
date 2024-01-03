FROM ubuntu:latest

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y wget ffmpeg aria2 python3-pip

RUN wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp_linux && \
    mv yt-dlp_linux yt-dlp && \
    chmod 777 yt-dlp && \
    mv yt-dlp /usr/local/bin/

RUN pip3 install pyrogram
COPY app.py .
CMD ["python3", "app.py"]
