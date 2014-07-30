require './lib/phone'
require './lib/email'
require './lib/address'

class Contacts

@@all_contacts = []

  def initialize (name)
    @name = name
    @emails = []
    @addresses = []
    @phones = []
  end

  def Contacts.clear
    @@all_contacts = []
  end

  def Contacts.all
    @@all_contacts
  end

  def save
    @@all_contacts << self
  end

  def all_info
    "#{@name}\n#{@emails}\n#{@addresses}\n#{@phones}"
  end

  def name
    @name
  end

  def phones
    @phones
  end

  def add_phone(user_phone)
    new_phone = Phone.new(user_phone)
    @phones << new_phone
  end

  def emails
    @emails
  end

  def add_email(user_email)
    new_email = Email.new(user_email)
    @emails << new_email
  end

  def addresses
    @addresses
  end

  def add_address(user_address)
    new_address = Address.new(user_address)
    @addresses << new_address
  end
end

