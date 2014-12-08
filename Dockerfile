FROM jasonk/docker-coreimage
RUN apt-get install -y cvs
ADD cvspserver /etc/xinetd.d/cvspserver
RUN cvs -d /var/lib/cvs init
RUN chown -R nobody /var/lib/cvs
RUN echo nobody: > /var/lib/cvs/CVSROOT/passwd
EXPOSE 9401
