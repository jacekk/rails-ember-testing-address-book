describe 'Routing', ->
  it '/', -> routesTo '/', 'index'

  it '/contacts', -> routesTo '/contacts', 'contacts'

  it '/contacts/1', -> routesTo '/contacts/1', 'contact'

  it '/contacts/new', -> routesTo '/contacts/new', 'contactNew'

  it '/contacts/:contact_id/edit', -> routesTo '/contacts/1/edit', 'contactEdit'
