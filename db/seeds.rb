

Document.create(document_section: "PC" , document_level: "1ere" , document_type: "Résumé")
Document.create(document_section: "PC" , document_level: "1ere" , document_type: "Concour")
Document.create(document_section: "PC" , document_level: "2eme" , document_type: "Devoir")
Document.create(document_section: "MP" , document_level: "2eme" , document_type: "Série")
Document.create(document_section: "MP" , document_level: "1ere" , document_type: "Résumé")
Document.create(document_section: "MP" , document_level: "1ere" , document_type: "Devoir")
Document.create(document_section: "PT" , document_level: "2eme" , document_type: "Examen")
Document.create(document_section: "PT" , document_level: "1ere" , document_type: "Résumé")
Document.create(document_section: "PT" , document_level: "1ere" , document_type: "Série")
Document.create(document_section: "PB" , document_level: "2eme" , document_type: "ConcourDevoir")
Document.create(document_section: "PB" , document_level: "1ere2eme" , document_type: "Examen")
Document.create(document_section: "PB" , document_level: "1ere2eme" , document_type: "Série")

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

Section.create(section_name: "MP")
Section.create(section_name: "PC")
Section.create(section_name: "PT")
Section.create(section_name: "BG")

Institute.create(institute_name: "IPEIS")
Institute.create(institute_name: "IPEIT")
Institute.create(institute_name: "IPEIM")
Institute.create(institute_name: "IPEIB")
Institute.create(institute_name: "IPEIN")
Institute.create(institute_name: "IPEIEM")
Institute.create(institute_name: "IPEIK")
Institute.create(institute_name: "IPEIG")
Institute.create(institute_name: "ISSATGB")
Institute.create(institute_name: "ISSATMH")
Institute.create(institute_name: "FSM")
Institute.create(institute_name: "FSS")
Institute.create(institute_name: "FST")
Institute.create(institute_name: "IPEST")
Institute.create(institute_name: "ESSTHS")
Institute.create(institute_name: "ISTMT")
Institute.create(institute_name: "ISEP-BG-SOUKRA")

Course.create(course_name: "Math")
Course.create(course_name: "Physique")
Course.create(course_name: "Chimie")
Course.create(course_name: "Biologie")
Course.create(course_name: "Géologie")
Course.create(course_name: "Technique")
Course.create(course_name: "Conception")
Course.create(course_name: "Anglais")
Course.create(course_name: "Français")

CourseType.create(course_type: "Série")
CourseType.create(course_type: "Devoir")
CourseType.create(course_type: "Concour")
CourseType.create(course_type: "Examen")
CourseType.create(course_type: "Résumé")

AdminUser.create!(email: 'abderrahmen@example.com', password: 'password', password_confirmation: 'password') 
AdminUser.create!(email: 'chams@example.com', password: 'password', password_confirmation: 'password') 
