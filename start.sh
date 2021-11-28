#!/bin/bash
while ! google-chrome-stable --no-sandbox --start-maximized
do
  sleep 1
  echo "Restarting program..."
done