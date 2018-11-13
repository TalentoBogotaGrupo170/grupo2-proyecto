class Workshop < ApplicationRecord
  belongs_to :subject
  belongs_to :question
  belongs_to :student
end
