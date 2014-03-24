AddressBook.ContactNewRoute = Em.Route.extend
  model: -> @store.createRecord 'contact'