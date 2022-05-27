# frozen_string_literal: true

class ContentHeaderComponent < ViewComponent::Base
  def initialize(title:, subtitle:)
    @title = title
    @subtitle = subtitle
  end

end
