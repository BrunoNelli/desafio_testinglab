Quando('chamar o endpoint api-web_comum_enumerations_VRPAT.get') do
  @api_web_comum_enumerations_vrpat_get = Apiweb.get('/comum/enumerations/VRPAT', verify: false)
end

Então('validar o retorno do endpoint api-web_comum_enumerations_VRPAT.get') do
  response = @api_web_comum_enumerations_vrpat_get
  expect(response).to have_key('typeOfEstablishment')
  log(response['typeOfEstablishment'].sample)
end
