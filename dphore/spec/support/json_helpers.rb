# frozen_string_literal: true

module JsonHelpers
  def load_body(response)
    JSON.parse(response.body)
  end

  def load_data(response)
    JSON.parse(response)
  end
end
