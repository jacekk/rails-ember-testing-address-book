AddressBook.ContactEditController = Em.ObjectController.extend
  actions:
    saveContact: ->
      @setProperties first_name: @get('first_name'), last_name: @get('last_name')
      contact = @get 'model'
      emails = contact.get('emails')

      @get('model').save().then (contact) =>
        emails = contact.get('emails')
        @transitionToRoute 'contacts'

    cancelEditing: ->
      @get('model').rollback()
      @transitionToRoute 'contact', @get('model')

    addEmail: ->
      email = @store.createRecord 'email', address: '', contact: @get('model')
      contact = @get 'model'

      email.save().then ->
        contact.get('emails').addObject email
        contact.save()

    deleteEmail: (email) ->
      email.deleteRecord()
      @get('model.emails').removeObject email

AddressBook.ContactNewController = AddressBook.ContactEditController