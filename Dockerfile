FROM alpine

LABEL maintainer="YANYAN" \
      email="yanyanjulyandi123@gmail.com" \
      version="1.0"

# Install Apache2
RUN apk update && apk add --no-cache apache2

# Membuat direktori untuk website
RUN mkdir -p /var/www/localhost/htdocs

# Menyalin isi folder UAS-PCC-YANYAN-2025 saja (tanpa foldernya)
COPY back.jpg /var/www/localhost/htdocs/
COPY daftar.html /var/www/localhost/htdocs/
COPY email.jpg /var/www/localhost/htdocs/
COPY hdd1.jpg /var/www/localhost/htdocs/
COPY hdd3.jpg /var/www/localhost/htdocs/
COPY hdd4.jpg /var/www/localhost/htdocs/
COPY img.css /var/www/localhost/htdocs/
COPY index.html /var/www/localhost/htdocs/
COPY install.html /var/www/localhost/htdocs/
COPY key.html /var/www/localhost/htdocs/
COPY key.jpg /var/www/localhost/htdocs/
COPY key2.jpg /var/www/localhost/htdocs/
COPY key3.jpg /var/www/localhost/htdocs/
COPY key4.jpg /var/www/localhost/htdocs/
COPY key5.jpg /var/www/localhost/htdocs/
COPY key6.jpg /var/www/localhost/htdocs/
COPY key7.jpg /var/www/localhost/htdocs/
COPY laptop.jpg /var/www/localhost/htdocs/
COPY login.html /var/www/localhost/htdocs/
COPY mouse.html /var/www/localhost/htdocs/
COPY mouse1.jpg /var/www/localhost/htdocs/
COPY mouse2.jpg /var/www/localhost/htdocs/
COPY mouse3.jpg /var/www/localhost/htdocs/
COPY mouse4.jpg /var/www/localhost/htdocs/
COPY mouse5.jpg /var/www/localhost/htdocs/
COPY mouse6.jpg /var/www/localhost/htdocs/
COPY mouse7.jpg /var/www/localhost/htdocs/
COPY office7.jpg /var/www/localhost/htdocs/
COPY office16.jpg /var/www/localhost/htdocs/
COPY moffice19.jpg /var/www/localhost/htdocs/
COPY office21.jpg /var/www/localhost/htdocs/
COPY pc.jpg /var/www/localhost/htdocs/
COPY print.jpg /var/www/localhost/htdocs/
COPY produk.html /var/www/localhost/htdocs/
COPY pros.html /var/www/localhost/htdocs/
COPY pros1.jpg /var/www/localhost/htdocs/
COPY pros2.jpg /var/www/localhost/htdocs/
COPY pros3.jpg /var/www/localhost/htdocs/
COPY pros4.jpg /var/www/localhost/htdocs/
COPY pros5.jpg /var/www/localhost/htdocs/
COPY pros6.jpg /var/www/localhost/htdocs/
COPY pros7.jpg /var/www/localhost/htdocs/
COPY pros8.jpg /var/www/localhost/htdocs/
COPY pros9.jpg /var/www/localhost/htdocs/
COPY pros10.jpg /var/www/localhost/htdocs/
COPY ram.html /var/www/localhost/htdocs/
COPY ram1.jpg /var/www/localhost/htdocs/
COPY ram2.jpg /var/www/localhost/htdocs/
COPY ram3.jpg /var/www/localhost/htdocs/
COPY ram4.jpg /var/www/localhost/htdocs/
COPY ram5.jpg /var/www/localhost/htdocs/
COPY ram6.jpg /var/www/localhost/htdocs/
COPY ram7.jpg /var/www/localhost/htdocs/
COPY ram8.jpg /var/www/localhost/htdocs/
COPY ram9.jpg /var/www/localhost/htdocs/
COPY ram10.jpg /var/www/localhost/htdocs/
COPY seri.html /var/www/localhost/htdocs/
COPY service.html /var/www/localhost/htdocs/
COPY service.jpg /var/www/localhost/htdocs/
COPY shop.html /var/www/localhost/htdocs/
COPY ssd1.jpg /var/www/localhost/htdocs/
COPY ssd2.jpg /var/www/localhost/htdocs/
COPY ssd3.jpg /var/www/localhost/htdocs/
COPY ssd4.jpg /var/www/localhost/htdocs/
COPY ssd5.jpg /var/www/localhost/htdocs/
COPY ssd6.jpg /var/www/localhost/htdocs/
COPY ssd7.jpg /var/www/localhost/htdocs/
COPY ssd8.jpg /var/www/localhost/htdocs/
COPY ssd9.jpg /var/www/localhost/htdocs/
COPY stok.html /var/www/localhost/htdocs/
COPY storage.html /var/www/localhost/htdocs/
COPY style.css /var/www/localhost/htdocs/
COPY video.html /var/www/localhost/htdocs/
COPY video.mp4 /var/www/localhost/htdocs/
COPY wa.jpg /var/www/localhost/htdocs/
COPY win7.jpg /var/www/localhost/htdocs/
COPY win10.jpg /var/www/localhost/htdocs/
COPY win11.jpg /var/www/localhost/htdocs/

# Menyediakan file teks sebagai demonstrasi
RUN touch UAS-PCCM-YANYAN-2025.txt && \
    echo "UAS" > UAS-PCC-YANYAN-2025.txt

# Expose port 80 untuk Apache
EXPOSE 80

# Jalankan Apache di foreground
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
