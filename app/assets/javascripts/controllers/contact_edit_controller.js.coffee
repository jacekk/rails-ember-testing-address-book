AddressBook.ContactEditController = Em.ObjectController.extend
  actions:
    cancelEditing: ->
      contact = @get 'model'
      contact.rollback()
      @transitionToRoute 'contact', contact
