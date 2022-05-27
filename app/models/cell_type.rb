class CellType < ApplicationRecord
  extend Mobility
  translates :name, type: :string
  translates :description, backend: :action_text

  scope :active, -> { where(active: true) }

    def self.active_public
      active.send(:public)
    end

end
