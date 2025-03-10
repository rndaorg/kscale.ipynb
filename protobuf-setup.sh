# Create a temporary directory
mkdir -p /tmp/protoc
cd /tmp/protoc
 
# Download the zip file
wget https://github.com/protocolbuffers/protobuf/releases/download/v29.0/protoc-29.0-linux-aarch_64.zip
 
# Unzip the contents
unzip protoc-29.0-linux-aarch_64.zip
 
# Copy the protoc binary to a directory in your PATH
sudo cp bin/protoc /usr/local/bin/
 
# Copy the protobuf include files
sudo cp -r include/* /usr/local/include/
 
# Clean up
cd ..
rm -rf /tmp/protoc