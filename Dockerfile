# ✅ Prebuilt image with Python + FFmpeg + Rclone + Aria2 + unzip
FROM mysterysd/wzmlx:latest

# ✅ Set working directory
WORKDIR /usr/src/app

# ✅ Ensure start.sh is executable
COPY start.sh .
RUN chmod +x start.sh

# ✅ Install Python dependencies
COPY requirements.txt .
RUN pip3 install --upgrade pip setuptools wheel
RUN pip3 install --no-cache-dir --root-user-action=ignore -r requirements.txt

# ✅ Copy bot source code
COPY . .

# ✅ Start bot using start.sh (foreground process)
CMD ["bash", "start.sh"]
