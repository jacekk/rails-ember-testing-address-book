describe 'Contacts integration', ->
  beforeEach ->
    visit '/contacts'

  it  'header', ->
    find('.contacts-heading').text().should.equal 'contacts'

  it 'renders contacts', ->
    contactsLength = find('.contacts-list .contact-item').length
    contactsLength.should.equal 2
