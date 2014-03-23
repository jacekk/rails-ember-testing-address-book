# AddressBook.ApplicationRoute = Em.Route.extend
#   actions:
#     saveContact: ->
#       firstName = @get 'first_name'
#       lastName = @get 'lastName'

#       self = @
#       newContact = @store.createRecord 'contact', first_name: firstName, last_name: lastName
#       newContact.save().then((->
#         self.set 'newFirstName', ''
#         self.set 'newLastName', ''
#         self.toggleProperty 'addingNewContact'
#       ), (->
#         alert 'Unable to save rec'
#       ))

#     cancelNewContact: ->
#       @set 'newFirstName', ''
#       @set 'newLastName', ''
#       @toggleProperty 'addingNewContact'

#     deleteContact: (contact) ->
#       contact.destroyRecord()