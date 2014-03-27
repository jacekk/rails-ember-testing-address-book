describe 'Contact', ->
  it  'header', ->
    visit '/contacts/1'
    andThen ->
      find('.contact-details .contact-heading').text().should.equal 'Linus Torvalds'

  it 'contact via the index page', ->
    visit('/contacts')
    .click('.contact-item:last a')
    andThen ->
      find('.contact-details .contact-heading').text().should.equal 'Richard Stallman'
