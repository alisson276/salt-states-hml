/etc/vimrc:
  file.managed:
    - source: salt://common/files/vimrc
    - mode: 644
    - user: root
