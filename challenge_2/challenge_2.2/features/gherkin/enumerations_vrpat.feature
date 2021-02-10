#language: pt

@enumerations_vrpat
Funcionalidade: api-web_comum | Validar o endpoint enumerations_VRPAT
  Como uma aplicação de APIs
  Quero chamar o endpoint da API
  Para validar a funcionalidade do mesmo

  Cenário: Validar os estabelecimentos do endpoint api-web_comum_enumerations_VRPAT.get
    Quando chamar o endpoint api-web_comum_enumerations_VRPAT.get
    Então validar o retorno do endpoint api-web_comum_enumerations_VRPAT.get
