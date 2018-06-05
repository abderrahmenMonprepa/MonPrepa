class Video < ApplicationRecord

  # Video is consulted by many users,
  # so, we have to save video histories
  has_many :video_histories
  has_many :users , :through => :video_histories

end
