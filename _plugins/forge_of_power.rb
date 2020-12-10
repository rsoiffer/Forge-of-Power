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

      site.data["powers"] =
        site.data["talents"].flat_map do |name, school|
          school.map do |name2, power|
            {name2 => power.merge({"school" => name.capitalize()})}
          end
        end.reduce({}, :merge)

      site.data["trait_to_basic_powers"] = {}
      for power in site.data["basic-powers"]
        if power[1]["traits"]
          for t in power[1]["traits"]
            if !site.data["trait_to_basic_powers"].key?(t)
              site.data["trait_to_basic_powers"][t] = []
            end
            site.data["trait_to_basic_powers"][t] << power[0]
          end
        end
      end

      site.data["trait_to_talents"] = {}
      for school in site.data["talents"]
        for power in school[1]
          if power[1]["traits"]
            for t in power[1]["traits"]
              if !site.data["trait_to_talents"].key?(t)
                site.data["trait_to_talents"][t] = []
              end
              site.data["trait_to_talents"][t] << power[0]
            end
          end
        end
      end

      site.data["trait_to_feats"] = {}
      for feat_type in site.data["feats"]
        for power in feat_type[1]
          if power[1]["traits"]
            for t in power[1]["traits"]
              if !site.data["trait_to_feats"].key?(t)
                site.data["trait_to_feats"][t] = []
              end
              site.data["trait_to_feats"][t] << power[0]
            end
          end
        end
      end

    end
  end
end