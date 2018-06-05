class DocumentImage < ApplicationRecord


  # PDF Document will be divided to images 
  belongs_to :document
end
