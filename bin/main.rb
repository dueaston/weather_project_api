user1 = db.create("John Doe", "john@example.com")
user2 = db.create("Jane Smith", "jane@example.com")

# Read operation
puts "All users:"
puts db.all.map { |user| "ID: #{user.id}, Name: #{user.name}, Email: #{user.email}" }.join("\n")

# Update operation
db.update(user1.id, "John Smith", "john@example.com")

# Delete operation
db.delete(user2.id)

puts "\nAfter update and delete operations:"
puts db.all.map { |user| "ID: #{user.id}, Name: #{user.name}, Email: #{user.email}" }.join("\n")