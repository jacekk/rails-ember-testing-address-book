describe 'Contact', ->
  it 'has attributes', ->
    hasAttribute 'Contact', 'firstName', 'string'
    hasAttribute 'Contact', 'lastName', 'string'

describe 'relationships', ->
  it 'emails', ->
    emails = AddressBook.Contact.metaForProperty 'emails'
    emails.isRelationship.should.be.true

    emails.kind.should.equal 'hasMany'

describe 'computed properties', ->
  it 'fullName', ->
    computedPropertyTest 'contact', firstName: 'James', lastName: 'Bond', 'fullName', 'James Bond'

  it 'updates fullName', ->
    store = AddressBook.__container__.lookup 'store:main'
    Ember.run ->
      contact = store.createRecord 'contact', firstName: 'Mark', lastName: 'Shuttleworth'

      fullName = contact.get 'fullName'
      fullName.should.equal 'Mark Shuttleworth'

      contact.set 'firstName', 'Linus'
      fullName = contact.get 'fullName'
      fullName.should.equal 'Linus Shuttleworth'

      contact.set 'lastName', 'Stallman'
      fullName = contact.get 'fullName'
      fullName.should.equal 'Linus Stallman'
