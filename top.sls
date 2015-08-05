base:
  'hml-salt,hml-freebsd,hml-syndic,hml-linux':
    - match: list
    - common.resolvconf
    - common.hosts
    - common.vimrc
    - zabbix.agent.repo
  '*':
    - zabbix.agent.conf

  'filial13':
    - clone
