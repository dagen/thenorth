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
