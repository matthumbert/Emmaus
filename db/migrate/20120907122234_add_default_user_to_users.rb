class AddDefaultUserToUsers < ActiveRecord::Migration
  def change
    User.create(login: "admin@emmaus.org", password: "Accenture1", password_confirmation: "Accenture1")
  end
end
