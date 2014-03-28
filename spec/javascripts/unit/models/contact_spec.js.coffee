describe 'Contact', ->
  it 'has attributes', ->
    hasAttribute 'Contact', 'firstName', 'string'
    hasAttribute 'Contact', 'lastName', 'string'

describe 'relationships', ->
  it 'emails', ->
    emails = AddressBook.Contact.metaForProperty 'emails'
    emails.isRelationship.should.be.true

    emails.kind.should.equal 'hasMany'
