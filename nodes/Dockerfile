FROM puppet/puppet-agent-ubuntu
COPY ./demo.pp /
COPY ./entrypoint.sh /

RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/bin/bash" ]

CMD ["/entrypoint.sh"]
