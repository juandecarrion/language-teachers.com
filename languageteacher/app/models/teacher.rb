class Teacher < ActiveRecord::Base
  has_many :language_profiles
  validates :title, presence: true,
            length: { minimum: 5 }
end
