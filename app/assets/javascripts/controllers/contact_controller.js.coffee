AddressBook.ContactController = Em.ObjectController.extend
  actions:
    deleteContact: ->
      @get('model').destroyRecord().then =>
        @transitionToRoute 'contacts'
