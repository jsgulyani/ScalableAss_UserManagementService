#  make sure correct directory and run below 2 commands
#  docker build -t lms-userservice .
#  docker run -e PORT=8081 -p 8081:8081 lms-userservice

# Use the official Go image as a base
FROM golang:1.20

# Set the working directory inside the container
WORKDIR /app

# Copy the Go modules and dependency files
COPY go.mod go.sum ./

# Download and install dependencies
RUN go mod download

# Copy the rest of the application source code
COPY . .

# Build the Go app
RUN go build -o main .

# Expose port 8080 to the outside world
EXPOSE 8081

# Command to run the executable 	 	
CMD ["./main"]
