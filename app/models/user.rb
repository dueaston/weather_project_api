class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true
  attr_accessor :id, :name, :email
  
  
  def initialize(id, name, email)
    @id = id
    @name = name
    @email = email
  end
end

class UserDatabase
  def initialize
    @users = {}
    @next_id = 1
  end

  def create(name, email)
    user = User.new(@next_id, name, email)
    @users[@next_id] = user
    @next_id += 1
    user
  end

  def find(id)
    @users[id]
  end

  def update(id, name, email)
    user = find(id)
    return unless user
    
    user.name = name
    user.email = email
    user
  end

  def delete(id)
    @users.delete(id)
  end

  def all
    @users.values
  end
end
end
