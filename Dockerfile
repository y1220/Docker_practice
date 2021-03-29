FROM ubuntu:latest
# sample test file
RUN touch test
# -y is for answering yes 
RUN apt-get update && apt-get install -y \
    curl \
    cvs \
    nginx
RUN mkdir /new_dir
# COPY something /new_dir/
# deliver the compressed file (usually big data file..)
ADD compressed.tar /
ENV key1 neko
ENV key2=ku
ENV key3="chi" key4=t\ o\ r\ a
ENV key5 f u
RUN mkdir new_folder
WORKDIR /new_folder
RUN touch new_file
RUN mkdir read_host_folder
RUN mkdir created_in_Dockerfile
#CMD [ "bin/bash" ]
