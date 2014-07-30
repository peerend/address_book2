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

  def name
    @name
  end

  def phones
    @phones
  end

  def add_number(user_number)
    new_number = Number.new(user_number)
    @phones << new_number
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

