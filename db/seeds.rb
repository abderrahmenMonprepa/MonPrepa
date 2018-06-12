# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

# Document.create(document_section: "PC" , document_level: "1ere" , document_type: "Résumé")
# Document.create(document_section: "PC" , document_level: "1ere" , document_type: "Concour")
# Document.create(document_section: "PC" , document_level: "2eme" , document_type: "Devoir")
# Document.create(document_section: "MP" , document_level: "2eme" , document_type: "Série")
# Document.create(document_section: "MP" , document_level: "1ere" , document_type: "Résumé")
# Document.create(document_section: "MP" , document_level: "1ere" , document_type: "Devoir")
# Document.create(document_section: "PT" , document_level: "2eme" , document_type: "Examen")
# Document.create(document_section: "PT" , document_level: "1ere" , document_type: "Résumé")
# Document.create(document_section: "PT" , document_level: "1ere" , document_type: "Série")
# Document.create(document_section: "PB" , document_level: "2eme" , document_type: "ConcourDevoir")
# Document.create(document_section: "PB" , document_level: "1ere2eme" , document_type: "Examen")
# Document.create(document_section: "PB" , document_level: "1ere2eme" , document_type: "Série")

Document.create(document_section: "PC" , document_level: "1ere" , document_type: "Résumé" , document_course: "Math" , document_year: "2011")
Document.create(document_section: "PC" , document_level: "1ere" , document_type: "Concour" , document_course: "Physique" , document_year: "2011")
Document.create(document_section: "PC" , document_level: "2eme" , document_type: "Devoir" , document_course: "Physique" , document_year: "2016")
Document.create(document_section: "MP" , document_level: "2eme" , document_type: "Série" , document_course: "Math" , document_year: "2016")
Document.create(document_section: "MP" , document_level: "1ere" , document_type: "Résumé" , document_course: "Anglais" , document_year: "2016")
Document.create(document_section: "MP" , document_level: "1ere" , document_type: "Devoir" , document_course: "Physique" , document_year: "2011")
Document.create(document_section: "PT" , document_level: "2eme" , document_type: "Examen" , document_course: "Anglais" , document_year: "2016")
Document.create(document_section: "PT" , document_level: "1ere" , document_type: "Résumé" , document_course: "Math" , document_year: "2016")
Document.create(document_section: "PT" , document_level: "1ere" , document_type: "Série" , document_course: "Anglais" , document_year: "2014")
Document.create(document_section: "PB" , document_level: "2eme" , document_type: "ConcourDevoir" , document_course: "Physique" , document_year: "2012")
Document.create(document_section: "PB" , document_level: "1ere2eme" , document_type: "Examen" , document_course: "Anglais" , document_year: "2014")
Document.create(document_section: "PB" , document_level: "1ere2eme" , document_type: "Série" , document_course: "Math" , document_year: "2014")
