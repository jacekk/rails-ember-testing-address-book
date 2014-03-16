describe 'Contact integration', ->
  it  'header', ->
    visit '/contacts/1'
    andThen ->
      find('.contact-heading h1').text().should.equal 'Details for Contact 1'

  it 'contact via the index page', ->
    visit('/contacts').click('.contact-item:last a')
    andThen ->
      find('.contact-heading h1').text().should.equal 'Details for Contact 2'