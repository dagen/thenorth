{{sls}}.install_pkgs:
  pkg.installed:
    - pkgs:
      - openssh-server
