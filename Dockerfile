FROM mysterysd/wzmlx:latest

WORKDIR /usr/src/app

# Ensure start.sh is executable
COPY start.sh .
RUN chmod +x start.sh

# Install Python deps
COPY requirements.txt .
RUN pip3 install --upgrade pip setuptools wheel
RUN pip3 install --no-cache-dir -r requirements.txt

# Copy rest of the code
COPY . .

CMD ["bash", "start.sh"]
