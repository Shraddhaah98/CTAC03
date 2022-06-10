FROM python:3.6-alpine
COPY app.py /opt
WORKDIR /opt
CMD ["python","app.py"]

FROM node:9-slim
COPY myfirst.js /opt
COPY --from=0 /opt/app.py ./
WORKDIR /opt
CMD ["node", "myfirst.js"]
