AddressBook.ContactNewController = Em.ObjectController.extend
  actions:
    saveContact: ->
      contact = @get 'model'
      contact.save().then =>
        @transitionToRoute 'contact', contact
