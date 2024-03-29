module CustomTags

  class IconTag < Liquid::Tag
    include Jekyll::Filters::URLFilters

    def initialize(tag_name, text, tokens)
      super
      @text = text.strip
    end

    def render(context)
      @context = context
      @my_text = Liquid::Template.parse(@text).render(@context)
      "<img title=\"#{@my_text}\" class=\"inline-icon\" src=\"assets/svg/#{Jekyll::Utils.slugify(@my_text)}.svg\">"
    end
  end

  class ReferenceTag < Liquid::Tag
    include Jekyll::Filters::URLFilters

    def initialize(tag_name, text, tokens)
      super
      @text = text.strip
    end

    def render(context)
      @context = context
      url = relative_url("#{Jekyll::Utils.slugify(@text)}.html")
      "<a href=\"#{url}\">#{@text}</a>"
    end
  end

  class TraitTag < Liquid::Tag
    include Jekyll::Filters::URLFilters

    def initialize(tag_name, text, tokens)
      super
      @text = text.strip
    end

    def render(context)
      @context = context
      @my_text = Liquid::Template.parse(@text).render(@context)
      all_traits = @context.registers[:site].data["traits"].values.reduce(:merge)
      if !all_traits.key?(@my_text)
        print("Warning: unknown trait \"#{@my_text}\"\n")
      end
      url = relative_url("traits.html##{Jekyll::Utils.slugify(@my_text)}")
      "<span class=\"trait\"><a href=\"#{url}\">#{@my_text}</a></span>"
    end
  end

  class RollMeOneTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @text = text.strip
    end

    def render(context)
      @context = context
      "<div class=\"roll-me-one\" data-table=\"#{@text}\"></div>"
    end
  end

  class SmallPowerTag < Liquid::Block
    def render(context)
      @context = context
      text = super
      myyaml = YAML.load(text)
      @context["myyaml"] = myyaml.map { |key, value| [key, value] }[0]
      # puts "\n\n\n\n\n"
      # pp @context.scopes
      Liquid::Template
        .parse("{% include smallpower.html smallpower=myyaml %}")
        .render(@context)
    end
  end

end

Liquid::Template.register_tag("icon", CustomTags::IconTag)
Liquid::Template.register_tag("ref", CustomTags::ReferenceTag)
Liquid::Template.register_tag("trait", CustomTags::TraitTag)
Liquid::Template.register_tag("roll_me_one", CustomTags::RollMeOneTag)
Liquid::Template.register_tag("smallpower", CustomTags::SmallPowerTag)


module CustomFilters

  module ProcessFilter
    def process(input)
      input = Liquid::Template.parse(input.to_s).render(@context)

      converter = Jekyll::Converters::Markdown::LinkerProcessor.new(@context.registers[:site].config)
      
      converter.convert(input)
    end

    def process_inline(input)
      process(input)[3...-5]
    end
  end

end

class Jekyll::Converters::Markdown::LinkerProcessor
  def initialize(config)
    @converter = Jekyll::Converters::Markdown::KramdownParser.new(config)
  end

  def convert(content)
    new_content = content.gsub(/{[^{}]*}/) { |s|
      text = s[1..-2].strip
      slug_text = Jekyll::Utils.slugify(text)

      get_map = ->(map_name) {
        map_name.split("/").reduce(Jekyll::sites[0].data) {
          |m, part| m[part]
        }
      }

      m = {}
      m["ancestries"] = "[#{text}](#{slug_text}.html)"
      m["schools"] = "[#{text}](#{slug_text}.html)"
      m["skills"] = "[#{text}](skills.html##{slug_text})"
      m["conditions"] = "[#{text}](conditions.html##{slug_text})"
      m["equipment/combat/apparel"] = "[#{text}](equipment-combat.html##{slug_text})"
      m["equipment/combat/weapons"] = "[#{text}](equipment-combat.html##{slug_text})"

      matches =
        m.map { |val|
          val[1] if get_map[val[0]].find { |k, v|
            Jekyll::Utils.slugify(k) == slug_text
          }
        }.compact

      power_match = begin
        power = Jekyll::sites[0].data["all_powers"][text]
        "[#{text}](#{power["link"]})" if power
      end

      matches.first || power_match || begin
        print("Warning: could not resolve link to text \"#{text}\"\n")
        "***#{text}***"
      end
    }.gsub(/\[\[[^\[\]]*\]\]/) { |s|
      text = s[2..-3].strip
      all_traits = Jekyll::sites[0].data["traits"].values.reduce(:merge)
      if !all_traits.key?(text)
        print("Warning: unknown trait \"#{text}\"\n")
      end
      url = "traits.html##{Jekyll::Utils.slugify(text)}"
      "<span class=\"trait\"><a href=\"#{url}\">#{text}</a></span>"
    }
    @converter.convert(new_content)
  end
end

Liquid::Template.register_filter(CustomFilters::ProcessFilter)
