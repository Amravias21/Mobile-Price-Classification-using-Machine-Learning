FROM python:3.9

# Copy the requirements file and install dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy the model file and code
COPY mobile_price_classification_model.pkl mobile_price_classification_model.pkl
COPY model.py model.py

# Command to run the Flask app
CMD ["python", "model.py"]
