module UsersHelper
  def nested_sectors_options
    options = []
    generate_nested_sectors_options(Sector.where(parent_id: nil), options)
    options
  end

  private

  def generate_nested_sectors_options(sectors, options, level = 0)
    sectors.each do |sector|
      options << [sector.name, sector.id, { class: "level-#{level}" }]
      generate_nested_sectors_options(sector.children, options, level + 1)
    end
  end
end
