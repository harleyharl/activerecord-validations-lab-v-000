class Post < ActiveRecord::Base

  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary , length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }

end


def title_must_be_clickbaity
  unless title.include? && expiration_date < Date.today
    errors.add(:expiration_date, "can't be in the past")
  end
end
