describe 'Email', ->
  it 'no email addresses', ->
    visit '/contacts/2'
    andThen ->
      emailsLength = find('.email-address').length
      emailsLength.should.equal 0
      find('.no-emails').text().should.equal 'no emails assigned'
