base:
  'hml-salt,hml-freebsd,hml-syndic,hml-linux':
    - match: list
    - common.resolvconf
    - common.hosts
    - common.vimrc
