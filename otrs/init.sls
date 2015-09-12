# Instalação do pacote do OTRS
otrs:
  pkg.installed:
    - sources:
      - otrs: ftp://ftp.otrs.org/pub/otrs/RPMS/rhel/{{ salt['grains.get']('osmajorrelease')[0] }}/otrs-4.0.11-01.noarch.rpm
