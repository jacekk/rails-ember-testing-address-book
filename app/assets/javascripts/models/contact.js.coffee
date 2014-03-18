AddressBook.Contact = DS.Model.extend
  first_name: DS.attr 'string'
  last_name:  DS.attr 'string'
  emails: DS.hasMany 'email'
  phone: DS.attr 'string'

AddressBook.Contact.FIXTURES = [
  id: 1
  first_name: 'Linus'
  last_name: 'Torvalds'
,
  id: 2
  first_name: 'Richard'
  last_name: 'Stallman'
]