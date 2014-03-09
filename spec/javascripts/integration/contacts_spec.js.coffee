describe 'Contacts integration', ->
  beforeEach ->
    visit '/contacts'

  it  'header', ->
    find('.contacts_heading').text().should.equal 'Hello DWO! Hello Bielsko-Biała!'