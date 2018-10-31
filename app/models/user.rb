class User < ApplicationRecord
  belongs_to :location
  belongs_to :city
end
