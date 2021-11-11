{% if not 'karhold' in grains['host'] %}

{{ sls }}.error_unintended_target:
  test.show_notification:
    - text: |
        **** NOTICE ****
        {{ grains['fqdn'] }} is not intended to run {{ sls }} state. This state is only intended for the Grafana hosts, therefore this state will not be ran on this minion.
        **** NOTICE ****

{% else %}
{{ sls }}.notice_intended_target:
test.show_notification:
  - text: |
    **** NOTICE ****
    I'm about to install MariaDB on this host!
    **** NOTICE ****

{{ sls }}.install_pkgs:
  pkg.installed:
    - pkgs:
      - MariaDB-server
      - MariaDB-backup

{% endif %}
