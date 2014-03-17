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
      firstNameField = find('#new-first-name').length
      lastNameField = find('#new-last-name').length

      firstNameField.should.equal 1
      lastNameField.should.equal 1

  it 'adding a new contact', ->
    click '#add-new-contact'
    fillIn '#new-first-name', 'Mark'
    fillIn '#new-last-name', 'Shuttleworth'
    click '#save-new-contact'
    andThen ->
      firstName = find('.contacts-list .contact-item:last td:first').text()
      lastName = find('.contacts-list .contact-item:last td:nth-child(2)').text()

      firstName.should.equal 'Mark'
      lastName.should.equal 'Shuttleworth'

  it 'canceling creation of new contact', ->
    click '#add-new-contact'
    andThen ->
      firstNameField = find('#new-first-name').length
      firstNameField.should.equal 1

      click '#cancel-new-contact'
      andThen ->
        addNewContactButton = find('#add-new-contact').length
        addNewContactButton.should.equal 1