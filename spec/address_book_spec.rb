require 'Contacts'
require 'rspec'

describe Contacts do
  before do
    Contacts.clear
  end
  it 'is initialized with a name' do
    test_contact = Contacts.new('Bob')
    expect(test_contact).to be_an_instance_of Contacts
  end

  describe '.clear' do
    it 'empties all the saved contacts' do
      Contacts.new('joanne').save
      Contacts.clear
      Contacts.all.should eq []
    end
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
  describe 'add_phone' do
    it 'it adds a phone number to a contact' do
      test_contact = Contacts.new('Bob')
      test_contact.save
      test_contact.add_phone(12312312)
      expect(test_contact.phones[0].phone).to eq 12312312
    end
  end
  describe 'add_email' do
    it 'it adds an email to a contact' do
      test_contact = Contacts.new('Bob')
      test_contact.save
      test_contact.add_email('bob@gamil')
      expect(test_contact.emails[0].email).to eq 'bob@gamil'
    end
  end

  describe 'add_address' do
    it 'adds an address to a contact' do
      test_contact = Contacts.new('Bob')
      test_contact.save
      test_contact.add_address('123 st.')
      expect(test_contact.addresses[0].address).to eq '123 st.'
    end
  end
  describe '.all' do
    it 'lists the contacts from the array of saved contacts' do
      test_contact = Contacts.new('Bob')
      ruby_contact = Contacts.new('Ruby')
      test_contact.save
      ruby_contact.save
      expect(Contacts.all).to eq [test_contact, ruby_contact]
    end
  end
  # describe 'all_info' do
  #   it 'list the contact information' do
  #     test_contact = Contacts.new('Bob')
  #     test_contact.save
  #     test_contact.add_address('123 st')
  #     test_contact.add_phone(123456)
  #     test_contact.add_email('bob@gmail')
  #     expect(test_contact.all_info).to eq
  #   end
  # end
end
