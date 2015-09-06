def get():
  return { 'cpu': __grains__['cpu_model'], 'mem': __grains__['mem_total'] }
