# frozen_string_literal: true

class Visit
  include Capybara::DSL
  def visit_principal
    visit '/'
  end

  def visit_city(cidade)
    visit "https://aiqfome.com/PR/#{cidade}"
  end
end
