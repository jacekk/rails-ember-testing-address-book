AddressBook.Contact = DS.Model.extend
  first_name: DS.attr 'string'
  last_name:  DS.attr 'string'
  emails: DS.hasMany 'email', async: true

  full_name: (->
    "#{@get('first_name')} #{@get('last_name')}"
  ).property 'first_name', 'last_name'

  emails_list: (->
    @get('emails').mapBy('address').join ', '
  ).property 'emails.@each.address'

AddressBook.Contact.FIXTURES = [
  id: 1
  first_name: 'Linus'
  last_name: 'Torvalds'
  emails: '1 2'.w()
,
  id: 2
  first_name: 'Richard'
  last_name: 'Stallman'
]
