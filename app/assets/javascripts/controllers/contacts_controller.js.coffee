AddressBook.ContactsController = Em.ArrayController.extend
  actions:
    deleteContact: (contact) ->
      contact.destroyRecord()