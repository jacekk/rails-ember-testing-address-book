AddressBook.ContactEditController = Em.ObjectController.extend
  actions:
    saveContact: ->
      @setProperties first_name: @get('first_name'), last_name: @get('last_name')
      contact = @get 'model'
      emails = contact.get('emails')
      console.log 'emails', emails.get('length'), emails.mapBy 'id'

      @get('model').save().then (contact) ->
        emails = contact.get('emails')
        console.log 'emails', emails.get('length'), emails.mapBy 'id'
        # @transitionToRoute 'contact', @get('model')

    cancelEditing: ->
      @get('model').rollback()
      @transitionToRoute 'contact', @get('model')

    addEmail: ->
      email = @store.createRecord 'email', address: '', contact: @get('model')
      contact = @get 'model'
      contact.get('emails').addObject email
      console.log 'emails', contact.get('emails').get('length'), contact.get('emails').mapBy 'id'

      # email.save().then ->
      #   contact.get('emails').addObject email
      #   contact.save()

    deleteEmail: (email) ->
      email.deleteRecord()
      @get('model.emails').removeObject email