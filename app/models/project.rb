class Project < ApplicationRecord
  belongs_to :user
  validates :title, :description, :image, :zip, presence: true, allow_blank: false

  acts_as_votable

  has_attached_file :image, styles: { medium: '300x300>', thumb: '100x100>' }, default_url: '/images/:style/missing.png'
  validates_attachment_content_type :image, content_type: %r{/\Aimage\/.*\Z/}

  has_attached_file :zip
  validates_attachment_content_type :zip, content_type: ['application/zip', 'application/x-zip',
                                                         'application/octet-stream', 'application/x-zip-compressed']
  validates_attachment_size :zip, less_than: 10.megabyte
end
