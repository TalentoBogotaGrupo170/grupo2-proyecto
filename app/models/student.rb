class Student < ApplicationRecord
  belongs_to :administrator
  belongs_to :user
end
