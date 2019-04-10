# User class code
class User < ApplicationRecord
  def self.authenticate(name, password)
    User.first if name == 'Admin' && password == 'p1s$w04d'
  end
end
