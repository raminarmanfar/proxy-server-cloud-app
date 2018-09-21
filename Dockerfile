#GET the base default nginx image from docker hub
FROM nginx:1.14.0
 
#Delete the Existing default.conf
RUN rm /etc/nginx/conf.d/default.conf 
 
#Copy the custom default.conf to the nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf
