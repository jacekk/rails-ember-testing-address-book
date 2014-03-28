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
