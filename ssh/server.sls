openssh-server:
  pkg.installed

sshd:
  service.runing:
    - require
      - pkg: openssh-client
      - pkg: openssh-server
      - file:  /etc/ssh/sshd_banner
      - file:  /etc/ssh/sshd_config

/etc/ssh/sshd_config:
  file.managed
    - user: root
    - group: root
    - mode: 644
    - source: salt://ssh/sshd_config
    - require:
      - pkg: openssh_server

/etc/ssh/banner:
  file:
    - managed
    - user: root
    - group: root
    - mode: 644
    - source: salt://ssh/sshd_banner
    - require
      - pkg: openssh-server