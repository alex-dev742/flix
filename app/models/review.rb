class Review < ApplicationRecord
  validates :name, presence: true
  validates :comment, length: { minimum: 4 }

  STARS = [ 1, 2, 3, 4, 5 ]

  validates :stars, inclusion: {
    in: STARS,
    message: "must be between 1 and 5"
  }

  belongs_to :movie
end
