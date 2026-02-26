# Use lightweight nginx image
FROM nginx:alpine

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy your portfolio files to nginx folder
COPY . /usr/share/nginx/html

# Expose nginx port
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]


#Create a docker image in terminal using the command:
#docker build -t my-portfolio .

#Run the container using the command:
#docker run -d -p 80:80 my-portfolio

#Now you can access your portfolio by navigating to http://localhost:80 in your web browser.   

