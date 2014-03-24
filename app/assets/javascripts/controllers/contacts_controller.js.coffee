AddressBook.ContactsController = Em.ArrayController.extend
  savedContacts: Em.computed.filterBy 'content', 'isNew', false

  actions:
    deleteContact: (contact) ->
      contact.destroyRecord()