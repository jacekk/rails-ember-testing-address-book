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

  it 'updates full_name', ->
    store = AddressBook.__container__.lookup 'store:main'
    Ember.run ->
      contact = store.createRecord 'contact', first_name: 'Mark', last_name: 'Shuttleworth'

      fullName = contact.get 'full_name'
      fullName.should.equal 'Shuttleworth, Mark'

      contact.set 'first_name', 'Linus'
      fullName = contact.get 'full_name'
      fullName.should.equal 'Shuttleworth, Linus'

      contact.set 'last_name', 'Stallman'
      fullName = contact.get 'full_name'
      fullName.should.equal 'Stallman, Linus'

