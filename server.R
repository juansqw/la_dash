# Server
server <- function(input, output) {
  
  # DOM
  VarimServer('dom_inf', cnt = 'dom', var = 'ipc_gen', ttl = 'Indice de Precios al Consumidor')
  VarimServer('dom_imae', cnt = 'dom', var = 'imae_org', ttl = 'Indice Mensual de Actividad Económica')
  tcServer('dom_tcn', cnt = 'dom')
  tiServer('dom_ti', cnt = 'dom')
  
  # CRI
  VarimServer('cri_inf', cnt = 'cri',var = 'ipc_gen', ttl = 'Indice de Precios al Consumidor')
  VarimServer('cri_imae', cnt = 'slv', var = 'imae_org', ttl = 'Indice Mensual de Actividad Económica')
  tcServer('cri_tcn', cnt = 'cri')
  tiServer('cri_ti', cnt = 'cri')
  
  # SLV
  VarimServer('slv_inf', cnt = 'slv',var = 'ipc_gen', ttl = 'Indice de Precios al Consumidor')
  VarimServer('slv_imae', cnt = 'slv', var = 'imae_org', ttl = 'Indice Mensual de Actividad Económica')
  tcServer('slv_tcn', cnt = 'slv')
  tiServer('slv_ti', cnt = 'slv')
  
  # GTM
  VarimServer('gtm_inf', cnt = 'gtm',var = 'ipc_gen', ttl = 'Indice de Precios al Consumidor')
  VarimServer('gtm_imae', cnt = 'gtm', var = 'imae_org', ttl = 'Indice Mensual de Actividad Económica')
  tcServer('gtm_tcn', cnt = 'gtm')
  tiServer('gtm_ti', cnt = 'gtm')
  
  # HND
  VarimServer('hnd_inf', cnt = 'hnd',var = 'ipc_gen', ttl = 'Indice de Precios al Consumidor')
  VarimServer('hnd_imae', cnt = 'hnd', var = 'imae_org', ttl = 'Indice Mensual de Actividad Económica')
  tcServer('hnd_tcn', cnt = 'hnd')
  tiServer('hnd_ti', cnt = 'hnd')
  
  # NIC
  VarimServer('nic_inf', cnt = 'nic',var = 'ipc_gen', ttl = 'Indice de Precios al Consumidor')
  VarimServer('nic_imae', cnt = 'nic', var = 'imae_org', ttl = 'Indice Mensual de Actividad Económica')
  tcServer('nic_tcn', cnt = 'nic')
  tiServer('nic_ti', cnt = 'nic')
  
  # PNM
  VarimServer('pnm_inf', cnt = 'pnm',var = 'ipc_gen', ttl = 'Indice de Precios al Consumidor')
  VarimServer('pnm_imae', cnt = 'pnm', var = 'imae_org', ttl = 'Indice Mensual de Actividad Económica')
  tcServer('pnm_tcn', cnt = 'pnm')
  tiServer('pnm_ti', cnt = 'pnm')
}