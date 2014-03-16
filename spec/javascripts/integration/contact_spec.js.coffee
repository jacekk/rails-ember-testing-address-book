describe 'Contact integration', ->
  it  'header', ->
    visit '/contacts/1'
    andThen ->
      find('.contact-heading h1').text().should.equal 'Details for Contact 1'