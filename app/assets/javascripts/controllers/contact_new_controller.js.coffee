AddressBook.ContactNewController = Em.ObjectController.extend
  cancelEditing: ->
    @get('model').deleteRecord()
    @transitionToRoute 'contacts'
