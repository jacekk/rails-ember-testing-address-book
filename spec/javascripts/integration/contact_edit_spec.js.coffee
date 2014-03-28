describe 'ContactEdit', ->
  it 'header', ->
    visit '/contacts/1/edit'
    andThen ->
      find('.contact-heading').text().should.equal 'edit Linus Torvalds'

  it 'saves changes', ->
    visit '/contacts/1/edit'
    andThen ->
      fillIn '#first-name', 'Michał'
      fillIn '#last-name', 'Czyż'
      click '#save-contact'
      andThen ->
        name = find('.contact-heading').text()
        name.should.equal 'Michał Czyż'
