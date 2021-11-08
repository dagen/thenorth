{{ sls }}.uninstall_pkgs:
  pkg.removed:
    - pkgs:
      - nmap-ncat
      - telnet