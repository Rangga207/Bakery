# Gunakan image Nginx resmi
FROM nginx:latest

# Hapus konfigurasi default dan ganti dengan konfigurasi kita
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

# Copy seluruh file website dari folder utama ke direktori HTML Nginx
COPY . /usr/share/nginx/html

# Port yang akan diekspos
EXPOSE 80

# Jalankan Nginx
CMD ["nginx", "-g", "daemon off;"]
