AddressBook.ContactNewController = Em.ObjectController.extend
  actions:
    cancelEditing: ->
      @get('model').deleteRecord()
      @transitionToRoute 'contacts'
