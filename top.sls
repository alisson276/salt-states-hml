base:
  'hml-syndic,hml-salt':
    - match: list
    - apache.config
  'hml-linux':
    - apache.config
    - otrs
    - common.resolvconf
    - common.hosts
    - common.vimrc
    - zabbix.agent.repo
  'hml-salt,hml-freebsd,hml-syndic':
    - match: list
    - common.resolvconf
    - common.hosts
    - common.vimrc
    - zabbix.agent.repo
  '*':
    - zabbix.agent.conf
