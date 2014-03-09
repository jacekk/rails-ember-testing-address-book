describe 'Routing', ->

  it '/', -> routesTo '/', 'index'

  it '/contacts', -> routesTo '/contacts', 'contacts.index'