describe 'Contacts integration', ->
  beforeEach ->
    visit '/contacts'

  it  'header', ->
    find('.contacts-heading').text().should.equal 'contacts'

  it 'renders contacts', ->
    contactsLength = find('.contacts-list .contact-item').length
    contactsLength.should.equal 2

  it 'deletes contact', ->
    click('.contact-item:last .contact-delete')
    andThen ->
      contactsLength = find('.contact-item').length
      contactsLength.should.equal 1

  it 'no contacts', ->
    click('.contact-item:first .contact-delete')
    click('.contact-item:last .contact-delete')
    andThen ->
      contactsLength = find('.contact-item').length
      contactsLength.should.equal 0
      find('.no-contacts').text().should.equal 'no contacts have been found'

  it 'emails', ->
    andThen ->
      emails = find '.contact-emails'
      emails[0].innerText.should.equal 'linus@torvalds.com linus.torvalds@example.com'
