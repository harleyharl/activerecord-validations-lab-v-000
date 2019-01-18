class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 10 }
  validates :summary , length: { maximum: 100 }
  validates :category, inclusion: { in: %w("Fiction" "Non-Fiction") }

end
