ARG version="18.04"
FROM ubuntu:$version
RUN echo "version"$version
ARG likey="100"
#got the base image of ubuntu
LABEL MAINTAINER vikassinghvs1996@gmail.com
#told the world about the owner
RUN mkdir /code
#needed my own directory for keeping the sh file
COPY sample.sh /code/sample.sh
COPY testfile /code/testfile
#stored the code in the /code folder
#now need to give the executable permission to sample.sh
RUN chmod +x /code/sample.sh
RUN echo "Image is built at `date`"
RUN echo "key"$likey
ENTRYPOINT ["sh","/code/sample.sh"]
CMD ["/code/testfile"]
