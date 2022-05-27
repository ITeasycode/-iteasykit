class Page < ApplicationRecord
  extend FriendlyId
  extend Mobility
  translates :title, type: :string
  translates :slug, type: :string
  translates :description, backend: :action_text

  friendly_id :title, use: [:history, :mobility]

  belongs_to :cell_type

end
