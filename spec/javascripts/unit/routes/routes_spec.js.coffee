describe 'Routing', ->

  it '/', -> routesTo '/', 'index'
  it '/contacts', -> routesTo '/contacts', 'contacts.index'
  it '/contacts/1', -> routesTo '/contacts/1', 'contacts.show'