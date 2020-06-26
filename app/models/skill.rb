class Skill < ApplicationRecord
 extend FriendlyId
   friendly_id :skill, use: :slugged
end
