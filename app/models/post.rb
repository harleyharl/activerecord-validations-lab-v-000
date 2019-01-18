class Post < ActiveRecord::Base

  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary , length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
  validate :title_must_be_clickbaity

  def title_must_be_clickbaity
    binding.pry
    unless title.include?("Won't Believe" "Secret" "Top" "Guess")
      errors.add(:title, "False")
    end
  end

end
