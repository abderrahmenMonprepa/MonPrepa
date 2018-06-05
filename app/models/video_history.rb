class VideoHistory < ApplicationRecord

  # VideoHistory is an intermediate table
  # between User and Video
  belongs_to :user
  belongs_to :video
  
end
