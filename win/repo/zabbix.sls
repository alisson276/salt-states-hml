zabbix-agent:
  2.4.5.0:
    installer: 'http://www.suiviperf.com/zabbix/zabbix_agent-2.4.5_x64.msi'
    full_name: 'Zabbix Agent'
    reboot: False
    locale: en_US
    msiexec: True
    install_flags: 'SERVER=172.16.0.200 LPORT=10050 SERVERACTIVE=172.16.0.200:10051 RMTCMD=1 /qn'
