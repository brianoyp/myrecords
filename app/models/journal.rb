class Journal < ActiveRecord::Base
    has_many :comments, dependent: :destroy
    validates :date, presence: true, length: { minimum: 3}
end
