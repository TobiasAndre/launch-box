# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
[
  { name: 'Ruby', url: 'https://github.com/heroku/heroku-buildpack-ruby.git' },
  { name: 'Node.js', url: 'https://github.com/heroku/heroku-buildpack-nodejs.git' },
  { name: 'Python', url: 'https://github.com/heroku/heroku-buildpack-python.git' },
  { name: 'Java', url: 'https://github.com/heroku/heroku-buildpack-java.git' },
  { name: 'PHP', url: 'https://github.com/heroku/heroku-buildpack-php.git' },
  { name: 'JVM', url: 'https://github.com/heroku/heroku-buildpack-jvm-common.git' },
  { name: 'Go', url: 'https://github.com/heroku/heroku-buildpack-go.git' },
  { name: 'Gradle', url: 'https://github.com/heroku/heroku-buildpack-gradle.git' }
].each do |buildpack|
  Buildpack.find_or_create_by!(buildpack)
end
