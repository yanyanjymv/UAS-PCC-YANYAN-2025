FROM alpine

LABEL mainTAINER="YANYAN" \
    EMAIL="yanyanjulyandi123@gmail.com" \
    version="1.0"

RUN touch UAS-PCCM-YANYAN-2025.txt && \
    echo "Belajar Dockerfile" > UAS-PCCM-YANYAN-2025.txt

CMD [ "sh","-c","cat UAS-PCCM-2025.txt" ]