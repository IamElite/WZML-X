#!/bin/bash

echo "[INFO] Running update.py..."
python3 update.py || echo "[WARNING] update.py failed, continuing to start bot..."

echo "[INFO] Starting bot..."
exec python3 -m bot
