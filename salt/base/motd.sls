{{ sls }}.motd_file:
  file.managed:
    - name: /etc/motd
    - source: salt://base/templates/motd.j2
    - template: jinja