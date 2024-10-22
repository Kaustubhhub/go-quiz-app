FROM  golang:1.23.2-alpine3.20
WORKDIR /app
COPY . .
RUN go get -d -v ./...
RUN go build -o quiz-app .
EXPOSE 8000
CMD [ "./quiz-app" ]
