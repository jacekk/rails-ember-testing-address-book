AddressBook.ApplicationRoute = Em.Route.extend
  actions:
    saveContact: (contact) ->
      contact.save().then =>
        @transitionTo 'contact', contact
