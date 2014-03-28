describe 'ContactEdit', ->
  it 'header', ->
    visit '/contacts/1/edit'
    andThen ->
      find('.contact-heading').text().should.equal 'edit Linus Torvalds'
