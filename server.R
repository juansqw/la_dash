# Server
server <- function(input, output) {
  
  # DOM
  VarimServer('dom_inf', cnt = 'dom', var = 'ipc_gen')
  VarimServer('dom_imae', cnt = 'dom', var = 'imae_org')
  pibServer('dom_pib', cnt = 'dom', var = 'pib')
  pib_pieServer('dom_pie', cnt = 'dom')
  tcServer('dom_tcn', cnt = 'dom', var = 'tcv', nombre = 'Venta')
  tcServer('dom_remi', cnt = 'dom', var = 'rem_i', nombre = 'Remesas')
  tiServer('dom_ti', cnt = 'dom')
  iedServer('dom_ied', cnt = 'dom', var = 'ied', nombre = 'IED')
  
  # CRI
  VarimServer('cri_inf', cnt = 'cri', var = 'ipc_gen')
  VarimServer('cri_imae', cnt = 'cri', var = 'imae_org')
  pibServer('cri_pib', cnt = 'cri', var = 'pib')
  pib_pieServer('cri_pie', cnt = 'cri')
  tcServer('cri_tcn', cnt = 'cri', var = 'tcv', nombre = 'Venta')
  tcServer('cri_remi', cnt = 'cri', var = 'rem_i', nombre = 'Remesas')
  tiServer('cri_ti', cnt = 'cri')
  iedServer('cri_ied', cnt = 'cri', var = 'ied', nombre = 'IED')
  
  # SLV
  VarimServer('slv_inf', cnt = 'slv', var = 'ipc_gen')
  VarimServer('slv_imae', cnt = 'slv', var = 'imae_org')
  pibServer('slv_pib', cnt = 'slv', var = 'pib')
  pib_pieServer('slv_pie', cnt = 'slv')
  tcServer('slv_tcn', cnt = 'slv', var = 'tcv', nombre = 'Venta')
  tcServer('slv_remi', cnt = 'slv', var = 'rem_i', nombre = 'Remesas')
  tiServer('slv_ti', cnt = 'slv')
  iedServer('slv_ied', cnt = 'slv', var = 'ied', nombre = 'IED')
  
  # GTM
  VarimServer('gtm_inf', cnt = 'gtm', var = 'ipc_gen')
  VarimServer('gtm_imae', cnt = 'gtm', var = 'imae_org')
  pibServer('gtm_pib', cnt = 'gtm', var = 'pib')
  pib_pieServer('gtm_pie', cnt = 'gtm')
  tcServer('gtm_tcn', cnt = 'gtm', var = 'tcv', nombre = 'Venta')
  tcServer('gtm_remi', cnt = 'gtm', var = 'rem_i', nombre = 'Remesas')
  tiServer('gtm_ti', cnt = 'gtm')
  iedServer('gtm_ied', cnt = 'gtm', var = 'ied', nombre = 'IED')
  
  # HND
  VarimServer('hnd_inf', cnt = 'hnd', var = 'ipc_gen')
  VarimServer('hnd_imae', cnt = 'hnd', var = 'imae_org')
  pibServer('hnd_pib', cnt = 'hnd', var = 'pib')
  pib_pieServer('hnd_pie', cnt = 'hnd')
  tcServer('hnd_tcn', cnt = 'hnd', var = 'tcv', nombre = 'Venta')
  tcServer('hnd_remi', cnt = 'hnd', var = 'rem_i', nombre = 'Remesas')
  tiServer('hnd_ti', cnt = 'hnd')
  iedServer('hnd_ied', cnt = 'hnd', var = 'ied', nombre = 'IED')

  # PNM
  VarimServer('pnm_inf', cnt = 'pnm', var = 'ipc_gen')
  VarimServer('pnm_imae', cnt = 'pnm', var = 'imae_org')
  pibServer('pnm_pib', cnt = 'pnm', var = 'pib')
  #pib_pieServer('pnm_pie', cnt = 'pnm')
  tcServer('pnm_tcn', cnt = 'pnm', var = 'tcv', nombre = 'Venta')
  tcServer('pnm_remi', cnt = 'pnm', var = 'rem_i', nombre = 'Remesas')
  tiServer('pnm_ti', cnt = 'pnm')
  iedServer('pnm_ied', cnt = 'pnm', var = 'ied', nombre = 'IED')
  
}