# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#

require 'nokogiri'

html = File.read('vendor/index.html')
doc = Nokogiri::HTML(html)

options = doc.css('option')

sectors = options.map do |option|
  name = option.text.strip
  id = option.attr('value')

  level = name.count("\u00A0") / 4
  [name.gsub("\u00A0", ''), level, id]
end

sectors.each_with_index do |(name, level, _id), i|
  parent = nil
  if level > 0
    j = i - 1
    while j >= 0
      if sectors[j][1] < level
        parent = Sector.where(name: sectors[j][0]).last
        break
      end
      j -= 1
    end
  end
  Sector.create(name:, parent:)
end
