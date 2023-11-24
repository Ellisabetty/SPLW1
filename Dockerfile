FROM debian
COPY ./archive.sh /
COPY ./qwerty /
COPY ./QWERTY.docx /
RUN chmod +x /archive.sh
