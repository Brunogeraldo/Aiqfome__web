# frozen_string_literal: true

Before do
  @visit = Visit.new
  @cidades = CityPage.new
  @categoria = CategoryPage.new
  @restaurante = RestaurantePage.new
  @login = LoginPage.new
  @sacola = SacolaPage.new
  page.driver.browser.manage.window.maximize
end

After do
  temp_shot = page.save_screenshot('logs/temp_screenshot.png')

  Allure.add_attachment(
    name: 'Screenshot',
    type: Allure::ContentType::PNG,
    source: File.open(temp_shot)
  )
end
