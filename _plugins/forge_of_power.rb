module ForgeOfPower
  class DataGenerator < Jekyll::Generator
    safe true
    priority :high

    def generate(site)

      site.data["navigation"]["classes"] +=
        site.data["categories"].map do |name, schools|
          {"title" => name, "children" =>
            schools.map do |name2|
              {"title" => name2, "url" => Jekyll::Utils.slugify(name2) + ".html"}
            end
          }
        end
      site.data["navigation"]["character"][1]["children"] =
        site.data["ancestries"].map do |name|
          {"title" => name[0], "url" => Jekyll::Utils.slugify(name[0]) + ".html"}
        end

      site.data["all_powers"] = {}
      add_powers(site, site.data["basic-powers"], "basic-powers", "basic-powers.html#*")
      for school in site.data["talents"]
        add_powers(site, school[1], "talents/" + school[0], school[0] + ".html#*")
      end
      for feat_type in site.data["feats"]
        add_powers(site, feat_type[1], "feats/" + feat_type[0], "feats-" + feat_type[0] + ".html#*")
      end

      site.data["trait_to_basic_powers"] = {}
      site.data["trait_to_talents"] = {
        "Novice" => {}, "Veteran" => {}, "Master" => {}, "Epic" => {}, "Ribbon" => {}}
      site.data["trait_to_feats"] = {}
      site.data["trait_to_other"] = {}

      for power in site.data["all_powers"]
        map = get_map(site, power)
        if power[1]["traits"]
          for t in power[1]["traits"]
            if !map.key?(t)
              map[t] = []
            end
            map[t] << power[0]
          end
        end
      end

    end

    def add_powers(site, powers, source, link)
      for power in powers
        if site.data["all_powers"].key?(power[0])
          print("Warning: already added power #{power[0]}\n")
        else
          my_link = link.gsub("*", Jekyll::Utils.slugify(power[0]))
          site.data["all_powers"][power[0]] =
            power[1].merge({"source" => source, "link" => my_link})
          if power[1].key?("tabs")
            add_powers(site, power[1]["tabs"], "other", my_link)
          end
        end
      end
    end

    def get_map(site, power)
      case power[1]["source"]
        when /^basic-powers/
          site.data["trait_to_basic_powers"]
        when /^talents/
          site.data["trait_to_talents"][power[1]["tier"]]
        when /^feats/
          site.data["trait_to_feats"]
        else
          site.data["trait_to_other"]
      end
    end

  end
end