AddressBook.Contact = DS.Model.extend
  first_name: DS.attr 'string'
  last_name:  DS.attr 'string'
  email: DS.attr 'string'
  phone: DS.attr 'string'

AddressBook.Contact.FIXTURES = [
  id: 1
  first_name: 'Linus'
  last_name: 'Torvalds'
  email: 'linus@torvalds.com'
  phone: '123-456'
,
  id: 2
  first_name: 'Richard'
  last_name: 'Stallman'
  email: 'richard@stallman.com'
  phone: '654-321'
]