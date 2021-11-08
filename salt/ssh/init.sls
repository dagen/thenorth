include:
  - server

openssh:
  pkg.installed

/etc/ssh/ssh_config:
  file.managed:
    - user: root
    - group: root
    - mode: 664
    - source: salt://ssh/ssh_config
    - require:
      - pkg: openssh