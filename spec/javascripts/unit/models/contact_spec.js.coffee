describe 'Contact Model', ->
  hasAttribute 'Contact', 'first_name', 'string'
  hasAttribute 'Contact', 'last_name', 'string'

describe 'relationships', ->
  emails = AddressBook.Contact.metaForProperty 'emails'
  emails.isRelationship.should.be.true

  emails.kind.should.equal 'hasMany'