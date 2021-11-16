{{ sls }}.uninstall_pkgs:
  pkg.removed:
    - pkgs:
      - nmap-ncat
      - telnet


{{ sls }}.epel_release:
  pkg.installed:
    - pkgs:
      - epel-release