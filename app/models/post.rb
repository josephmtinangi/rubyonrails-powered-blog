class Post < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :comments

  has_attached_file :image, :default_url => ':style/post.jpg'
  do_not_validate_attachment_file_type :image

  validates :title, presence: true
  validates :category_id, presence: true
  validates :body, presence: true

  def self.search(query)
    where('title like ? OR body like ?', "%#{query}%", "%#{query}%")
  end

end
