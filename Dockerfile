FROM alpine

LABEL maintainer="YANYAN" \
      email="yanyanjulyandi123@gmail.com" \
      version="1.0"

# Install nginx
RUN apk add --no-cache nginx

# Salin index.html dan file gambar ke dalam folder yang tepat
COPY index.html /usr/share/nginx/html/
COPY ram2.jpg /usr/share/nginx/html/
COPY pros1.jpg /usr/share/nginx/html/
COPY ssd1.jpg /usr/share/nginx/html/
COPY nvme1.jpg /usr/share/nginx/html/
COPY key2.jpg /usr/share/nginx/html/
COPY mouse.jpg /usr/share/nginx/html/
COPY service.jpg /usr/share/nginx/html/

# Expose port 80 untuk nginx
EXPOSE 80

# Jalankan nginx di mode foreground
CMD ["nginx", "-g", "daemon off;"]
