FROM alpine

LABEL maintainer="YANYAN" \
      email="yanyanjulyandi123@gmail.com" \
      version="1.0"

# Install nginx dan copy index.html ke dalam container
RUN apk add --no-cache nginx

# Membuat direktori untuk website dan menyalin index.html
COPY index.html /usr/share/nginx/html/

# Menyediakan file teks sebagai demonstrasi
RUN touch UAS-PCCM-YANYAN-2025.txt && \
    echo "Belajar Dockerfile" > UAS-PCCM-YANYAN-2025.txt

# Expose port 80 untuk nginx
EXPOSE 80

# Menjalankan nginx dalam mode foreground
CMD ["nginx", "-g", "daemon off;"]
