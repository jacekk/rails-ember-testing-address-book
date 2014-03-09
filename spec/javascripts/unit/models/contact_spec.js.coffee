describe 'Contacts Model', ->

  it 'first_name', ->
    hasAttribute 'Contact', 'first_name', 'string'
    hasAttribute 'Contact', 'last_name', 'string'