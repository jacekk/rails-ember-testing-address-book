AddressBook.Email = DS.Model.extend
  address: DS.attr 'string'
  contact: DS.belongsTo 'contact', async: true

AddressBook.Email.FIXTURES = [
  id: 1
  address: 'linus@torvalds.com'
,
  id: 2
  address: 'linus.torvalds@example.com'
]
