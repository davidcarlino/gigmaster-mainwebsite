#!/bin/bash

# Set the directory containing the files to upload
DIRECTORY="/path/to/public_html"

# FTP server details
FTP_SERVER="ftp.gigmaster.co"
FTP_USER="davidcarlino"
FTP_PASS="jiPbT#B5N5ePub%iE#kBP1uxk"
FTP_PORT=21

# Use lftp to upload files with certificate verification disabled
lftp -u $FTP_USER,$FTP_PASS -p $FTP_PORT $FTP_SERVER << EOF
# Disable certificate verification
set ssl:verify-certificate no

# Change local directory to where the files are located
lcd $DIRECTORY

# Change remote directory accordingly, create if doesn't exist
cd public_html || mkdir public_html && cd public_html

# Mirror the files from local to remote without overwriting existing files
mirror --reverse --no-overwrite --verbose

# Exit lftp
bye
EOF