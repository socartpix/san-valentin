FROM nginx:alpine

COPY index.html /usr/share/nginx/html/
COPY foto1.jpg /usr/share/nginx/html/
COPY foto2.jpg /usr/share/nginx/html/
COPY foto3.jpg /usr/share/nginx/html/
COPY fotoboda1.jpg /usr/share/nginx/html/
COPY fotoboda2.jpg /usr/share/nginx/html/
COPY fotoboda3.jpg /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
