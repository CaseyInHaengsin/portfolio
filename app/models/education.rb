class Education < ApplicationRecord
    extend FriendlyId
    friendly_id :study_focus, use: :slugged
end
