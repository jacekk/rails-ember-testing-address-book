describe 'ContactNew', ->
  it  'header', ->
    visit '/contacts/new'
    andThen ->
      find('.contact-heading').text().should.equal 'add new contact'

  it 'creates new contact', ->
    visit '/contacts/new'
    andThen ->
      fillIn '#first-name', 'Mark'
      fillIn '#last-name', 'Shuttleworth'
      click '#save-new-contact'
      andThen ->
        name = find('.contact-heading').text()
        name.should.equal 'Mark Shuttleworth'

  it 'cancel creating new contact', ->
    visit '/contacts/new'
    andThen ->
      fillIn '#first-name', 'Steve'
      fillIn '#last-name', 'Jobs'
      click '#cancel-new-contact'
      andThen ->
        contactsLength = find('.contacts-list .contact-item').length
        contactsLength.should.equal 2
