AddressBook.ContactsIndexRoute = Em.Route.extend
  model: ->
    @store.findAll 'contact'