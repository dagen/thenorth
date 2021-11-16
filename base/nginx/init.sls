nginx:
  pkg.latest:
    - pkgs:
      - nginx
      - php5-fpm
      - php5-cli
      - php5-gd
      - php5-mcrypt
      - php5-mysql

      