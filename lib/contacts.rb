class Contacts

@@all_contacts = []

  def initialize (name)
    @name = name
    @email = []
    @address = []
    @phone = []
  end

  def Contacts.all
    @@all_contacts
  end

  def save
    @@all_contacts << self
  end

  def all_info
    '#{@email}\n #{@address}\n #{@phone}'
  end

  def add_phone
    new_phone = Phone.new(phone)
    @phone = phone
  end

  def add_email
    new_email = Email.new(email)
    @email = email
  end

end

