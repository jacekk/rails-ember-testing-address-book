describe 'Email address integration', ->
  beforeEach ->
    visit '/contacts'

  it  'showing associated email addresses', ->
    visit '/contacts/1'
    andThen ->
      emails = find '.email-address'
      emails.length.should.equal 2
      emails[0].innerText.should.equal 'richard@stallman.com'
