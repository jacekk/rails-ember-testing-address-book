describe 'ContactNew', ->
  beforeEach ->
    visit '/contacts/new'

  it 'header', ->
    andThen ->
      find('.contact-heading').text().should.equal 'add new contact'

  it 'creates new contact', ->
    andThen ->
      fillIn '#first-name', 'Mark'
      fillIn '#last-name', 'Shuttleworth'
      click '#save-contact'
      andThen ->
        name = find('.contact-heading').text()
        name.should.equal 'Mark Shuttleworth'

  it 'cancel creating new contact', ->
    andThen ->
      fillIn '#first-name', 'Steve'
      fillIn '#last-name', 'Jobs'
      click '#cancel-contact'
      andThen ->
        contactsLength = find('.contacts-list .contact-item').length
        contactsLength.should.equal 2
