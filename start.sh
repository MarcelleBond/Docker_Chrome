#!/bin/bash
while ! google-chrome-stable --no-sandbox
do
  sleep 1
  echo "Restarting program..."
done