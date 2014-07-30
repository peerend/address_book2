require './lib/contacts'
require './lib/email'
require './lib/address'
require './lib/phone'

def main_menu
  loop do
    puts "Press 'c' to add a new contact"
    puts "Press 'l' to list all contacts"
    puts "Press 'd' to display contact details"
    puts "Press 'a' to add an address to a contact"
    puts "Press 'e' to add an email-address to a contact"
    puts "Press 'p' to add a phone number to a contact"
    puts "Press 'x' to exit"
    main_choice = gets.chomp
    if main_choice == 'c'
      new_contact
    elsif main_choice == 'l'
      list_contacts
    elsif main_choice == 'd'
      display_contact
    elsif main_choice == 'a'
      contact_address
    elsif main_choice == 'x'
      exit
    else
      puts 'invalid option'
    end
  end
end

def new_contact
  puts "enter the contact name"
  input_name = gets.chomp
  Contacts.new(input_name).save
end

def list_contacts
  puts "ContactsList:"
  Contacts.all.each_with_index do |contact, index|
    puts index.to_s + '   ' + contact.name
  end
end

def contact_phone
  puts "which contact would you like to add a phone number to?"
  list_contacts
  user_select = gets.chomp.to_i
  puts "enter a phone number"
  user_phone = gets.chomp
  Contacts.all[user_select].add_phone(user_phone)
end

def contact_email
  puts "which contact would you like to add a email-address to?"
  list_contacts
  user_select = gets.chomp.to_i
  puts "enter a email-address"
  user_email = gets.chomp
  Contacts.all[user_select].add_email(user_email)
end

def contact_address
  puts "which contact would you like to add a home address to?"
  list_contacts
  user_select = gets.chomp.to_i
  puts "enter an address"
  user_address = gets.chomp
  Contacts.all[user_select].add_address(user_address)

end

def display_contact
  puts "Display ContactsInfo"
  list_contacts
  puts "Which contact (number) would you like to see info for?"
  display_choice = gets.chomp.to_i
  puts Contacts.all[display_choice].all_info
end
main_menu
