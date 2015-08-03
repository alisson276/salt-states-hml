{% for ip, names in salt['pillar.get']('hosts', {}).items() %}
{{ ip }}-host-entry:
  host.present:
    - ip: {{ ip }}
    - names:
    {% for name in names %}
      - {{ name }}
    {% endfor %}
{% endfor %}
