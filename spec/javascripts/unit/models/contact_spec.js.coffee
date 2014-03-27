describe 'Contact Model', ->
  it 'has attributes', ->
    hasAttribute 'Contact', 'firstName', 'string'
    hasAttribute 'Contact', 'lastName', 'string'
    hasAttribute 'Contact', 'email', 'string'
