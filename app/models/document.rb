class Document < ApplicationRecord

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

	#Mounts paperclip corrige file
	has_attached_file :pdf_file_corrige
	validates_attachment_presence :pdf_file_enonce
	validates_attachment_content_type :pdf_file_enonce, :content_type => [ 'application/pdf','text/plain']

	# size: { in: 0..50.megabytes }
end
