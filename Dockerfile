# Use an official Go runtime as the base image
FROM golang:1.17-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the local code to the container
COPY . .

# Build the Go application
RUN go build -o server

# Expose the port your server listens on
EXPOSE 3000

# Command to run your server
CMD ["./server"]