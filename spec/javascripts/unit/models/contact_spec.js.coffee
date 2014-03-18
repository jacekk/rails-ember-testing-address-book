describe 'Contact Model', ->
  it 'attributes', ->
    hasAttribute 'Contact', 'first_name', 'string'
    hasAttribute 'Contact', 'last_name', 'string'

describe 'relationships', ->
  it 'emails', ->
    emails = AddressBook.Contact.metaForProperty 'emails'
    emails.isRelationship.should.be.true

    emails.kind.should.equal 'hasMany'