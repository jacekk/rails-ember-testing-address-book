describe 'Routing', ->
  it '/', -> routesTo '/', 'index'

  it '/contacts', -> routesTo '/contacts', 'contacts'

  it '/contacts/1', -> routesTo '/contacts/1', 'contact'
