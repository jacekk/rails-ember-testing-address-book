attr = DS.attr

AddressBook.Contact = DS.Model.extend
  firstName:  attr 'string'
  lastName:   attr 'string'
  email:      attr 'string'

AddressBook.Contact.FIXTURES = [
  id: 1
  firstName: 'Linus'
  lastName: 'Torvalds'
  email: 'linus@torvalds.com'
,
  id: 2
  firstName: 'Richard'
  lastName: 'Stallman'
  email: ''
]
