module ForgeOfPower
  class DataGenerator < Jekyll::Generator
    safe true
    priority :high

    def generate(site)
      site.data["powers"] =
        site.data["power_data"].flat_map do |name, school|
          school.map do |name2, power|
            {name2 => power.merge({"school" => name.capitalize()})}
          end
        end.reduce({}, :merge)
    end
  end
end