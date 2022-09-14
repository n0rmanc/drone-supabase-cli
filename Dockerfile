


FROM homebrew/brew:3.6.0
RUN brew install supabase/tap/supabase

RUN sudo apt-get update

RUN sudo apt-get -y install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release \
    vim

WORKDIR /workspace




ADD script.sh /bin/
RUN sudo chmod +x /bin/script.sh
ENTRYPOINT [ "sh", "-c", "echo \"$PLUGIN_ACCESS_TOKEN\" | /bin/script.sh" ]

# FROM alpine 
# RUN apk add build-base gcompat




# COPY supabase_1.4.6_linux_amd64.apk /workspace/
# RUN ls /workspace/

# RUN apk add --allow-untrusted /workspace/supabase_1.4.6_linux_amd64.apk



