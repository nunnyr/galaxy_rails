class Trip < ApplicationRecord
  belongs_to :user
  # belongs_to :planet
  belongs_to :depart_planet, :class_name => :Planet,:foreign_key => "depart_planet_id"
  belongs_to :arrival_planet, :class_name => :Planet,:foreign_key => "arrival_planet_id"
end
