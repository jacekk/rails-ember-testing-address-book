describe 'ContactNew', ->
  it  'header', ->
    visit '/contacts/new'
    andThen ->
      find('.contact-heading').text().should.equal 'add new contact'
