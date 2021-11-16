{{sls}}.install_pkgs:
  pkg.installed:
    - pkgs:
      - openssh-server


{{ sls }}.banner_file:
  file.managed:
    - name: /etc/ssh/sshd_banner
    - source: salt://ssh/files/sshd_banner
    - owner: root
    - mode: 644


{{ sls }}.sshd_config:
  file.managed:
    - name: /etc/ssh/sshd_config
    - source: salt://ssh/files/sshd_config
    - owner: root
    - mode: 644