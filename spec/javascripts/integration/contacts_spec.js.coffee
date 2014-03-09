describe 'Contacts integration', ->
  beforeEach ->
    visit '/contacts'

  it 'header', ->
    find('.contacts_heading').text().should.equal 'Hello DWO! Hello Bielsko-Biała!'

  it 'contacts rendering', ->
    contactsLength = find('.contacts-list li').length
    contactsLength.should.equal 2