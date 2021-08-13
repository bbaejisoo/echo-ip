FROM nginx:stable

LABEL Name=echo-ip Version=0.0.5
COPY nginx.conf /etc/nginx/nginx.conf
COPY cert.crt /etc/nginx/conf.d/cert.crt
COPY cert.key /etc/nginx/conf.d/cert.key

#CMD ["nginx", "-g", "daemon off;"]
CMD ["nginx", "-g", "-v", "/var/run/docker.sock:/var/run/docker.sock", "daemon off;"]
