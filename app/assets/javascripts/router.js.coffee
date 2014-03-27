# For more information see: http://emberjs.com/guides/routing/

AddressBook.Router.map () ->
  @resource 'contacts'
  @resource 'contact', path: '/contacts/:contact_id'
  @resource 'contactNew', path: '/contacts/new'
