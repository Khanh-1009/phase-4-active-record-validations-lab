class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
    validate :acceptable_title

    def acceptable_title
        if title == "True Facts"
            errors.add(:title, "Won't Believe")
        end
    end
end
