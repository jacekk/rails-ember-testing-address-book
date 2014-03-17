AddressBook.ContactsIndexController = Em.ArrayController.extend
  actions:
    addNewContact: ->
      @toggleProperty 'addingNewContact'
      false

    saveNewContact: ->
      newFirstName = @get 'newFirstName'
      newLastName = @get 'newLastName'

      self = @
      newContact = @store.createRecord 'contact', first_name: newFirstName, last_name: newLastName
      newContact.save().then((->
        self.set 'newFirstName', ''
        self.set 'newLastName', ''
        self.toggleProperty 'addingNewContact'
      ), (->
        alert 'Unable to save rec'
      ))

    cancelNewContact: ->
      @set 'newFirstName', ''
      @set 'newLastName', ''
      @toggleProperty 'addingNewContact'