puts "Seeding..."

# Create Users
users = User.create([
  { username: 'User 1', password: 'password1' },
  { username: 'User 2', password: 'password2' },
  { username: 'User 3', password: 'password3' },
  { username: 'User 4', password: 'password4' },
  { username: 'User 5', password: 'password5' }
])

# Create Anatomy Modules
anatomy_modules = AnatomyModule.create([
  { title: 'Module 1', description: 'Description for Module 1' },
  { title: 'Module 2', description: 'Description for Module 2' },
  { title: 'Module 3', description: 'Description for Module 3' },
  { title: 'Module 4', description: 'Description for Module 4' },
  { title: 'Module 5', description: 'Description for Module 5' }
])

# Create Reviews
reviews = Review.create([
  { title: 'Review 1', user: users[0], rating: 5, anatomy_module: anatomy_modules[0], review: 'This module is great!' },
  { title: 'Review 2', user: users[0], rating: 4, anatomy_module: anatomy_modules[1], review: 'I enjoyed learning from this module.' },
  { title: 'Review 3', user: users[1], rating: 4, anatomy_module: anatomy_modules[0], review: 'I found it informative.' },
  { title: 'Review 4', user: users[2], rating: 3, anatomy_module: anatomy_modules[2], review: 'Good, but could use more content.' },
  { title: 'Review 5', user: users[3], rating: 5, anatomy_module: anatomy_modules[3], review: 'Excellent content and explanations.' },
  { title: 'Review 6', user: users[4], rating: 4, anatomy_module: anatomy_modules[0], review: 'Well-organized and easy to follow.' }
])

puts "Done Seeding 🌱"