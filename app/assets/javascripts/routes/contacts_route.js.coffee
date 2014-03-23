AddressBook.ContactsRoute = Em.Route.extend
  model: ->
    @store.findAll 'contact'