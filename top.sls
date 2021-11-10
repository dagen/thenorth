base:
  '*':
    - base
    - ssh

  # Here, I am looking for a grain match
  # If a minion's grain has a role = dbserver, then include these states

  'karhold':    
    - mariadb