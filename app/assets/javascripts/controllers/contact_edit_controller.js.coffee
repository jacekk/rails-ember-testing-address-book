AddressBook.ContactEditController = Em.ObjectController.extend
  actions:
    cancelEditing: ->
      contact = @get 'model'
      contact.rollback()
      @transitionToRoute 'contact', contact

    addEmail: ->
      email = @store.createRecord 'email', address: '', contact: @get('model')
      @get('model.emails').pushObject email
