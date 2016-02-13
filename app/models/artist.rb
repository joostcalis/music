class Artist < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  has_many :songs
end
