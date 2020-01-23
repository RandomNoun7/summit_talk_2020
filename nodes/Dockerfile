FROM puppet/puppet-agent-ubuntu
COPY ./demo.pp /
COPY ./entrypoint.sh /

RUN chmod +x /entrypoint.sh

RUN apt-get update
RUN apt-get install -y \
      less \
      locales \
      ca-certificates \
      libicu60 \
      libssl1.1 \
      libc6 \
      libgcc1 \
      libgssapi-krb5-2 \
      liblttng-ust0 \
      libstdc++6 \
      zlib1g \
      curl

RUN curl -L https://github.com/PowerShell/PowerShell/releases/download/v7.0.0-preview.4/powershell-7.0.0-preview.4-linux-x64.tar.gz -o /tmp/powershell.tar.gz \
    && mkdir -p /opt/microsoft/powershell/7-preview \
    && tar zxf /tmp/powershell.tar.gz -C /opt/microsoft/powershell/7-preview \
    && chmod +x /opt/microsoft/powershell/7-preview/pwsh \
    && ln -s /opt/microsoft/powershell/7-preview/pwsh /usr/bin/pwsh-preview

ENTRYPOINT [ "/bin/bash" ]

CMD ["/entrypoint.sh"]
