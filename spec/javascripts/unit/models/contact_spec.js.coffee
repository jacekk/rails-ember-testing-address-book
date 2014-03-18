describe 'Contact Model', ->
  it 'attributes', ->
    hasAttribute 'Contact', 'first_name', 'string'
    hasAttribute 'Contact', 'last_name', 'string'

describe 'relationships', ->
  it 'emails', ->
    emails = AddressBook.Contact.metaForProperty 'emails'
    emails.isRelationship.should.be.true

    emails.kind.should.equal 'hasMany'

describe 'computed properties', ->
  it 'full_name', ->
    computedPropertyTest 'contact', first_name: 'James', last_name: 'Bond', 'full_name', 'Bond, James'