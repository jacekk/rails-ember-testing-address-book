describe 'Contact', ->
  it  'header', ->
    visit '/contacts/1'
    andThen ->
      find('.contact-details .contact-heading').text().should.equal 'Linus Torvalds'
