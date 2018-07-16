class Document < ApplicationRecord

	# User document scope
	scope :user_documents, -> (user){ where(document_level: user.school_year , document_section: user.section ) }

	# All sections for defined school year
	scope :all_sections, -> (user) { where(document_level: user.school_year ) }


	# Get documents by type
	scope :resumes, ->{ where(document_type: "Résumé" ) }
	scope :concours, ->{ where(document_type: "Concour" ) }
	scope :devoirs, ->{ where(document_type: "Devoir" ) }
	scope :series, ->{ where(document_type: "Série" ) }
	scope :examens, ->{ where(document_type: "Examen" ) }

	
	# Add votable gem to document model
	acts_as_votable

	# PDF Document will be consulted by many users,
	# so, we have to save document histories
	has_many :document_histories
	has_many :users , :through => :document_histories

	# PDF Document will be divided to many images
	has_many :document_images

	# PDF document has_many comments
	has_many :comments

	# PDF document can be added to DocumentFavori
	has_many :document_favoris

	#Mounts paperclip enenoce_file
	has_attached_file :pdf_file_enonce , 
	:path => ":rails_root/public/enonce/:id/:filename"
	validates_attachment_presence :pdf_file_enonce
	validates_attachment_content_type :pdf_file_enonce, :content_type => [ 'application/pdf','text/plain']

	#Mounts paperclip corrige file
	has_attached_file :pdf_file_corrige , 
	:path => ":rails_root/public/corrige/:id/:filename"
	validates_attachment_content_type :pdf_file_enonce, :content_type => [ 'application/pdf','text/plain']

	# size: { in: 0..50.megabytes }
end
