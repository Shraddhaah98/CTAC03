FROM node:9-slim

RUN apt-get update || : && apt-get install python -y

WORKDIR /app
COPY myfirst.js /app
COPY app.py /app
CMD ["node", "myfirst.js"]