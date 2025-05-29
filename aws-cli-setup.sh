#Check if Arm or x86_64
if [ "$(uname -m)" = "x86_64" ]; then
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
else
    curl "https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip" -o "awscliv2.zip"
fi

unzip awscliv2.zip
sudo ./aws/install
rm -rf awscliv2.zip aws
