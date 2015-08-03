/etc/resolv.conf:
  file.managed:
    - user: root
    - mode: '0644'
    - source: salt://common/files/resolv.conf
    - template: jinja
    - defaults:
        nameservers: {{ salt['pillar.get']('nameservers', ['8.8.8.8','8.8.4.4']) }}
