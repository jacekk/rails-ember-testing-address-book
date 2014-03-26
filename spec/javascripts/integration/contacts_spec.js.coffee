describe 'Contacts integration', ->
  beforeEach ->
    visit '/contacts'

  it  'header', ->
    find('.contacts-heading').text().should.equal 'contacts'
