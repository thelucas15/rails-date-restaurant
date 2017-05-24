require 'nokogiri'
require 'open-uri'
require_relative 'recipe'
require_relative 'view'
require_relative 'cookbook'
require 'byebug'


class Scraper
def parse(food_type)


  require 'open-uri'
require 'nokogiri'

ingredient = "chocolate"

html_file = open(""https://www.zomato.com/grande-lisboa/restaurants/=#{food_type}")
html_doc = Nokogiri::HTML(html_file)

html_doc.search('.recipeLnk').each do |element|
  puts element.text
  puts element.attribute('href')
end

   #2 scrape LetsCookfrench for that keyword recipe etc.
url = "https://www.zomato.com/grande-lisboa/restaurants/=#{keyword}"

html = Nokogiri::HTML(open(url))

results = []
    doc.css('.card').each  do |i|
     results << {name: i.attribute('data-result-type').text.strip, address: i.attribute('title').text.strip, food_type: }
      end
    html.search('.m_texte_resultat').each do |i|
      results <<{description: i.text.strip} , phone_number: i.attribute('data-phone-no-str')
    end

 @view.display(results[:name])

    #4 ask the user for a recipe to import

    index = @view.ask_user_for_index

    #5 give recipe to the cookbook

    recipe = results[index]
    @cookbook.add_recipe(recipe)
 end
end
