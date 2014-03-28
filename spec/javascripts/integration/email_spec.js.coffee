describe 'Email', ->
  it 'no email addresses', ->
    visit '/contacts/2'
    andThen ->
      emailsLength = find('.email-address').length
      emailsLength.should.equal 0
      find('.no-emails').text().should.equal 'no emails assigned'

  it 'showing associated email addresses', ->
    visit '/contacts/1'
    andThen ->
      emails = find '.email-address'
      emails.length.should.equal 2
      emails.eq(0).text().should.equal 'linus@torvalds.com'

  it 'adds email', ->
    visit '/contacts/1/edit'
    andThen ->
      click '#add-email'
      andThen ->
        fillIn 'input:last', 'l.torvalds@example.com'
        click '#save-contact'
        andThen ->
          emails = find '.email-address'
          emails.length.should.equal 3
          emails.eq(2).text().should.equal 'l.torvalds@example.com'

  it 'deletes email', ->
    visit '/contacts/1/edit'
    andThen ->
      click '.delete-email:last'
      emails = find 'input[type=email]'
      emails.length.should.equal 1
