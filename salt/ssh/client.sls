{{sls}}.install_pkgs:
  pkg.installed:
    - pkgs:
      - openssh-client


{{ sls }}.ssh_config_file:
  file.managed:
    - name: /etc/ssh/ssh_config
    - source: salt://ssh/files/ssh_config
    - owner: root
    - mode: 644