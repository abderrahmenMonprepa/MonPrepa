class Document < ApplicationRecord

	# First year scopes
	scope :first_year_pc, ->{ where(document_level: "1ere" , document_section: "PC" ) }
	scope :first_year_mp, ->{ where(document_level: "1ere" , document_section: "MP" ) }
	scope :first_year_pt, ->{ where(document_level: "1ere" , document_section: "PT" ) }
	scope :first_year_pb, ->{ where(document_level: "1ere" , document_section: "PB" ) }

	# Second year scopes
	scope :second_year_pc, ->{ where(document_level: "2eme" , document_section: "PC" ) }
	scope :second_year_mp, ->{ where(document_level: "2eme" , document_section: "MP" ) }
	scope :second_year_pt, ->{ where(document_level: "2eme" , document_section: "PT" ) }
	scope :second_year_pb, ->{ where(document_level: "2eme" , document_section: "PB" ) }

	# All sections
	scope :first_year_all_sections, ->{ where(document_level: "1ere" ) }
	scope :second_year_all_sections, ->{ where(document_level: "2eme" ) }

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
	has_attached_file :pdf_file_enonce
	validates_attachment_presence :pdf_file_enonce
	validates_attachment_content_type :pdf_file_enonce, :content_type => [ 'application/pdf','text/plain']

	# #Mounts paperclip corrige file
	has_attached_file :pdf_file_corrige
	validates_attachment_presence :pdf_file_enonce
	validates_attachment_content_type :pdf_file_enonce, :content_type => [ 'application/pdf','text/plain']

	# size: { in: 0..50.megabytes }
end
