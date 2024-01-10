# Base image
FROM python:3.8

# set the working directory inside the contaier
WORKDIR /app

# copy yht requirements file
COPY requirements.txt .

# Intsall the project dependencies
RUN pip install -r requirements.txt

# copy the application code into the container
COPY . .

# Expose the port for the Flask application will be listening on
Expose 5000

# set environemrt variables, if neccessary
# ENV MY_ENV_VAR-value

# Run the flask application
CMD ["python" , "app.py"]
