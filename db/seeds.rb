

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

# Document.create(document_section: "PC" , document_level: "1ere" , document_type: "Résumé" , document_course: "Math" , document_year: "2011")
# Document.create(document_section: "PC" , document_level: "1ere" , document_type: "Concour" , document_course: "Physique" , document_year: "2011")
# Document.create(document_section: "PC" , document_level: "2eme" , document_type: "Devoir" , document_course: "Physique" , document_year: "2016")
# Document.create(document_section: "MP" , document_level: "2eme" , document_type: "Série" , document_course: "Math" , document_year: "2016")
# Document.create(document_section: "MP" , document_level: "1ere" , document_type: "Résumé" , document_course: "Anglais" , document_year: "2016")
# Document.create(document_section: "MP" , document_level: "1ere" , document_type: "Devoir" , document_course: "Physique" , document_year: "2011")
# Document.create(document_section: "PT" , document_level: "2eme" , document_type: "Examen" , document_course: "Anglais" , document_year: "2016")
# Document.create(document_section: "PT" , document_level: "1ere" , document_type: "Résumé" , document_course: "Math" , document_year: "2016")
# Document.create(document_section: "PT" , document_level: "1ere" , document_type: "Série" , document_course: "Anglais" , document_year: "2014")
# Document.create(document_section: "PB" , document_level: "2eme" , document_type: "ConcourDevoir" , document_course: "Physique" , document_year: "2012")
# Document.create(document_section: "PB" , document_level: "1ere2eme" , document_type: "Examen" , document_course: "Anglais" , document_year: "2014")
# Document.create(document_section: "PB" , document_level: "1ere2eme" , document_type: "Série" , document_course: "Math" , document_year: "2014")

# Section.create(section_name: "MP")
# Section.create(section_name: "PC")
# Section.create(section_name: "PT")
# Section.create(section_name: "BG")

# Institute.create(institute_name: "IPEIS")
# Institute.create(institute_name: "IPEIT")
# Institute.create(institute_name: "IPEIM")
# Institute.create(institute_name: "IPEIB")
# Institute.create(institute_name: "IPEIN")
# Institute.create(institute_name: "IPEIEM")
# Institute.create(institute_name: "IPEIK")
# Institute.create(institute_name: "IPEIG")
# Institute.create(institute_name: "ISSATGB")
# Institute.create(institute_name: "ISSATMH")
# Institute.create(institute_name: "FSM")
# Institute.create(institute_name: "FSS")
# Institute.create(institute_name: "FST")
# Institute.create(institute_name: "IPEST")
# Institute.create(institute_name: "ESSTHS")
# Institute.create(institute_name: "ISTMT")
# Institute.create(institute_name: "ISEP-BG-SOUKRA")

CourseType.create(course_type: "Série d'exercices")
CourseType.create(course_type: "Devoir surveillé")
CourseType.create(course_type: "Concours")
CourseType.create(course_type: "Examen")
CourseType.create(course_type: "Résumé")

# AdminUser.create!(email: 'abderrahmen@monprepa.com', password: '***monprepa***', password_confirmation: 'password') 
# AdminUser.create!(email: 'chams@monprepa.com', password: '***monprepa***', password_confirmation: 'password') 

# # Administrator.create(admin_username: "this_is_admin" , user_id: 4)


# Message.create!(administrator_id: 1 , message_title: "Bienvenue à MonPrepa" , message_text: "Vous êtes les binevenues à notre plateforme MonPrepa qui vous offre un ensemble de cours, de résumés, de concours ...")
# Message.create!(administrator_id: 1 , message_title: "Des vidéos de révision" , message_text: "Prochainement, notre plateforme vous offre des videos de révision et de correction des concours en ligne.")


#  Liste des matières pour chaque section et niveau

# MP 1
UserMatter.create(section: "MP" , level: "1" , matter: "Mathématique")
UserMatter.create(section: "MP" , level: "1" , matter: "Analyse")
UserMatter.create(section: "MP" , level: "1" , matter: "Algèbre")
UserMatter.create(section: "MP" , level: "1" , matter: "Physique")
UserMatter.create(section: "MP" , level: "1" , matter: "Chimie")
UserMatter.create(section: "MP" , level: "1" , matter: "STA")
UserMatter.create(section: "MP" , level: "1" , matter: "Mécaniques des solides indéformables")
UserMatter.create(section: "MP" , level: "1" , matter: "Automatique")
UserMatter.create(section: "MP" , level: "1" , matter: "Conception mécanique")
UserMatter.create(section: "MP" , level: "1" , matter: "Informatique")
UserMatter.create(section: "MP" , level: "1" , matter: "Anglais")
UserMatter.create(section: "MP" , level: "1" , matter: "Français")

# MP 2
UserMatter.create(section: "MP" , level: "2" , matter: "Mathématique")
UserMatter.create(section: "MP" , level: "2" , matter: "Analyse")
UserMatter.create(section: "MP" , level: "2" , matter: "Algèbre")
UserMatter.create(section: "MP" , level: "2" , matter: "Physique")
UserMatter.create(section: "MP" , level: "2" , matter: "Chimie")
UserMatter.create(section: "MP" , level: "2" , matter: "STA")
UserMatter.create(section: "MP" , level: "2" , matter: "Mécaniques des solides indéformables")
UserMatter.create(section: "MP" , level: "2" , matter: "Automatique")
UserMatter.create(section: "MP" , level: "2" , matter: "Informatique")
UserMatter.create(section: "MP" , level: "2" , matter: "Français")
UserMatter.create(section: "MP" , level: "2" , matter: "Anglais")

# PC 1
UserMatter.create(section: "PC" , level: "1" , matter: "Mathématique")
UserMatter.create(section: "PC" , level: "1" , matter: "Analyse")
UserMatter.create(section: "PC" , level: "1" , matter: "Algèbre")
UserMatter.create(section: "PC" , level: "1" , matter: "Physique")
UserMatter.create(section: "PC" , level: "1" , matter: "Chimie")
UserMatter.create(section: "PC" , level: "1" , matter: "Chimie générale")
UserMatter.create(section: "PC" , level: "1" , matter: "Chimie organique")
UserMatter.create(section: "PC" , level: "1" , matter: "STA")
UserMatter.create(section: "PC" , level: "1" , matter: "Mécaniques des solides indéformables")
UserMatter.create(section: "PC" , level: "1" , matter: "Automatique")
UserMatter.create(section: "PC" , level: "1" , matter: "Conception mécanique")
UserMatter.create(section: "PC" , level: "1" , matter: "Informatique")
UserMatter.create(section: "PC" , level: "1" , matter: "Anglais")
UserMatter.create(section: "PC" , level: "1" , matter: "Français")

# PC 2
UserMatter.create(section: "PC" , level: "2" , matter: "Mathématique")
UserMatter.create(section: "PC" , level: "2" , matter: "Analyse")
UserMatter.create(section: "PC" , level: "2" , matter: "Algèbre")
UserMatter.create(section: "PC" , level: "2" , matter: "Physique")
UserMatter.create(section: "PC" , level: "2" , matter: "Chimie")
UserMatter.create(section: "PC" , level: "2" , matter: "Chimie générale")
UserMatter.create(section: "PC" , level: "2" , matter: "Chimie organique")
UserMatter.create(section: "PC" , level: "2" , matter: "STA")
UserMatter.create(section: "PC" , level: "2" , matter: "Mécaniques des solides indéformables")
UserMatter.create(section: "PC" , level: "2" , matter: "Automatique")
UserMatter.create(section: "PC" , level: "2" , matter: "Informatique")
UserMatter.create(section: "PC" , level: "2" , matter: "Anglais")
UserMatter.create(section: "PC" , level: "2" , matter: "Français")

# PT 1
UserMatter.create(section: "PT" , level: "1" , matter: "Mathématique")
UserMatter.create(section: "PT" , level: "1" , matter: "Analyse")
UserMatter.create(section: "PT" , level: "1" , matter: "Algèbre")
UserMatter.create(section: "PT" , level: "1" , matter: "Physique")
UserMatter.create(section: "PT" , level: "1" , matter: "Chimie")
UserMatter.create(section: "PT" , level: "1" , matter: "STA")
UserMatter.create(section: "PT" , level: "1" , matter: "Mécaniques des solides indéformables")
UserMatter.create(section: "PT" , level: "1" , matter: "Résistance des matériaux")
UserMatter.create(section: "PT" , level: "1" , matter: "Automatique")
UserMatter.create(section: "PT" , level: "1" , matter: "CFM")
UserMatter.create(section: "PT" , level: "1" , matter: "Fabrication mécanique")
UserMatter.create(section: "PT" , level: "1" , matter: "Conception mécanique")
UserMatter.create(section: "PT" , level: "1" , matter: "Informatique")
UserMatter.create(section: "PT" , level: "1" , matter: "Anglais")
UserMatter.create(section: "PT" , level: "1" , matter: "Français")

# PT 2
UserMatter.create(section: "PT" , level: "2" , matter: "Mathématique")
UserMatter.create(section: "PT" , level: "2" , matter: "Analyse")
UserMatter.create(section: "PT" , level: "2" , matter: "Algèbre")
UserMatter.create(section: "PT" , level: "2" , matter: "Physique")
UserMatter.create(section: "PT" , level: "2" , matter: "Chimie")
UserMatter.create(section: "PT" , level: "2" , matter: "STA")
UserMatter.create(section: "PT" , level: "2" , matter: "Mécaniques des solides indéformables")
UserMatter.create(section: "PT" , level: "2" , matter: "Résistance des matériaux")
UserMatter.create(section: "PT" , level: "2" , matter: "Automatique")
UserMatter.create(section: "PT" , level: "2" , matter: "CFM")
UserMatter.create(section: "PT" , level: "2" , matter: "Fabrication mécanique")
UserMatter.create(section: "PT" , level: "2" , matter: "Conception mécanique")
UserMatter.create(section: "PT" , level: "2" , matter: "Informatique")
UserMatter.create(section: "PT" , level: "2" , matter: "Anglais")
UserMatter.create(section: "PT" , level: "2" , matter: "Français")

# BG 1
UserMatter.create(section: "BG" , level: "1" , matter: "Mathématique")
UserMatter.create(section: "BG" , level: "1" , matter: "Analyse")
UserMatter.create(section: "BG" , level: "1" , matter: "Algèbre")
UserMatter.create(section: "BG" , level: "1" , matter: "Physique")
UserMatter.create(section: "BG" , level: "1" , matter: "Probabilité")
UserMatter.create(section: "BG" , level: "1" , matter: "Statistique")
UserMatter.create(section: "BG" , level: "1" , matter: "Informatique")
UserMatter.create(section: "BG" , level: "1" , matter: "Anglais")
UserMatter.create(section: "BG" , level: "1" , matter: "Français")
UserMatter.create(section: "BG" , level: "1" , matter: "Biologie cellulaire")
UserMatter.create(section: "BG" , level: "1" , matter: "Génétique")
UserMatter.create(section: "BG" , level: "1" , matter: "Biologie animale 1")
UserMatter.create(section: "BG" , level: "1" , matter: "Biologie animale 2")
UserMatter.create(section: "BG" , level: "1" , matter: "Biologie végétale")
UserMatter.create(section: "BG" , level: "1" , matter: "Géologie")
UserMatter.create(section: "BG" , level: "1" , matter: "Chimie générale")
UserMatter.create(section: "BG" , level: "1" , matter: "Chimie organique")

# BG 2
UserMatter.create(section: "BG" , level: "2" , matter: "Mathématique")
UserMatter.create(section: "BG" , level: "2" , matter: "Analyse")
UserMatter.create(section: "BG" , level: "2" , matter: "Algèbre")
UserMatter.create(section: "BG" , level: "2" , matter: "Physique")
UserMatter.create(section: "BG" , level: "2" , matter: "Probabilité")
UserMatter.create(section: "BG" , level: "2" , matter: "Informatique")
UserMatter.create(section: "BG" , level: "2" , matter: "Anglais")
UserMatter.create(section: "BG" , level: "2" , matter: "Français")
UserMatter.create(section: "BG" , level: "2" , matter: "Physiologie animale")
UserMatter.create(section: "BG" , level: "2" , matter: "Génétique")
UserMatter.create(section: "BG" , level: "2" , matter: "Biochimie")
UserMatter.create(section: "BG" , level: "2" , matter: "Biologie animale 3")
UserMatter.create(section: "BG" , level: "2" , matter: "Physiologie végétale")
UserMatter.create(section: "BG" , level: "2" , matter: "Géologie")
UserMatter.create(section: "BG" , level: "2" , matter: "Botanique")
UserMatter.create(section: "BG" , level: "2" , matter: "Chimie générale")
UserMatter.create(section: "BG" , level: "2" , matter: "Chimie organique")