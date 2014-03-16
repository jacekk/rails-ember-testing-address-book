AddressBook.ContactsShowRoute = Em.Route.extend
  model: (params) ->
    @store.find 'contact', params.contact_id