require 'Contacts'
require 'rspec'

describe Contacts do
  it 'is initialized with a name' do
    test_contact = Contacts.new('Bob')
    expect(test_contact).to be_an_instance_of Contacts
  end

  describe '#save' do
    it 'adds a contact to the array of saved contacts' do
      test_contact = Contacts.new('Bob')
      ruby_contact = Contacts.new('Ruby')
      test_contact.save
      ruby_contact.save
      expect(Contacts.all).to eq [test_contact, ruby_contact]
    end
  end
end
