class Employee < ApplicationRecord
  belongs_to :shop
  belongs_to :title
end
