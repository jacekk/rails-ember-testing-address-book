# For more information see: http://emberjs.com/guides/routing/

AddressBook.Router.map ()->
  @resource 'contacts'
  @resource 'contactNew', path: '/contacts/new'
  @resource 'contact', path: '/contacts/:contact_id'
  @resource 'contactEdit', path: '/contacts/:contact_id/edit'