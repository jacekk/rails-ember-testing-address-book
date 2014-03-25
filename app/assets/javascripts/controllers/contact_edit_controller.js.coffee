AddressBook.ContactEditController = Em.ObjectController.extend
  actions:
    saveContact: ->
      @get('model.emails').invoke('save')
      @get('model').save().then =>
        @transitionToRoute 'contacts'

    cancelEditing: ->
      @get('model').rollback()
      @transitionToRoute 'contact', @get('model')

    addEmail: ->
      email = @store.createRecord 'email', address: '', contact: @get('model')
      @get('model.emails').pushObject email

    deleteEmail: (email) ->
      email.deleteRecord()
      @get('model.emails').removeObject email

AddressBook.ContactNewController = AddressBook.ContactEditController.extend
  actions:
    cancelEditing: ->
      @transitionToRoute 'contacts'