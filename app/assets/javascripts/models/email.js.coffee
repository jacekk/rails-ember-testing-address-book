AddressBook.Email = DS.Model.extend
  address: DS.attr 'string'
  contact: DS.belongsTo 'contact'

AddressBook.Email.FIXTURES = [
  id: 1
  address: 'linus@torvalds.com'
  contact: 1
,
  id: 2
  address: 'linus.torvalds@example.com'
  contact: 1
]