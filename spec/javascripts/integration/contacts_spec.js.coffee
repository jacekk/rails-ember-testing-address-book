describe 'Contacts integration', ->
  beforeEach ->
    visit '/contacts'

  it  'header', ->
    find('.contacts-heading').text().should.equal 'Contacts'

  it 'renders contacts', ->
    contactsLength = find('.contacts-list .contact-item').length
    contactsLength.should.equal 2

  it 'show input for new contact', ->
    click '#add-new-contact'
    andThen ->
      inputField = find('#new-first-name').length
      inputField.should.equal 1