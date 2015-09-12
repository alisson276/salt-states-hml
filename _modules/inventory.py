def mem():
    return str(__grains__['mem_total']) + "M"

def cpu():
    return __grains__['cpu_model']

def dhcp():
    return 'Sim'

def ip():
    for interface, ipaddr in __grains__['ip_interfaces'].items():
        if interface == 'lo': continue
        if interface == 'lo0': continue
        ip=ipaddr[0]
    return ip

def device():
    for interface in __grains__['ip_interfaces']:
        if interface == 'lo': continue
        if interface == 'lo0': continue
        device=interface
    return device

def disk():
    return '300G'

def fqdn():
    return __grains__['fqdn']

def so():
    return __grains__['osfinger'] + " (" + __grains__['osarch'] + ")"

def get():
    return {
        'cpu': cpu(),
        'mem': mem(),
        'dhcp': dhcp(),
        'ip': ip(),
        'device': device(),
        'disk': disk(),
        'fqdn': fqdn(),
        'so': so()
    }
