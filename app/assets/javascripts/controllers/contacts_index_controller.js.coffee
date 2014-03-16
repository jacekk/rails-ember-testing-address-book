AddressBook.ContactsIndexController = Em.ArrayController.extend
  actions:
    addNewContact: ->
      @toggleProperty 'addingNewContact'
      false