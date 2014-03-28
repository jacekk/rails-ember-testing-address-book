AddressBook.ContactNewController = AddressBook.ContactEditController.extend
  actions:
    cancelEditing: ->
      @get('model').deleteRecord()
      @transitionToRoute 'contacts'
