class Club < ApplicationRecord
    has_one :club_profile
    accepts_nested_attributes_for :club_profile
end
