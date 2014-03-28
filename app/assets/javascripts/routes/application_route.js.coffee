AddressBook.ApplicationRoute = Em.Route.extend
  actions:
    saveContact: (contact) ->
      Em.RSVP.all(contact.get('emails').invoke 'save').then =>
        contact.save().then =>
          @transitionTo 'contact', contact
