attr = DS.attr

AddressBook.Contact = DS.Model.extend
  firstName:  attr 'string'
  lastName:   attr 'string'
  emails: DS.hasMany 'email', async: true

AddressBook.Contact.FIXTURES = [
  id: 1
  firstName: 'Linus'
  lastName: 'Torvalds'
  emails: '1 2'.w()
,
  id: 2
  firstName: 'Richard'
  lastName: 'Stallman'
]
