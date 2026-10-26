
require "jekyll"

module BlogTaxonomy
  PER_PAGE = 15

  class TaxonomyPage < Jekyll::Page
    def initialize(site, kind, name, posts, page_number, total_pages)
      @site = site
      @base = site.source

      slug = Jekyll::Utils.slugify(name.to_s)
      root = "#{kind}/#{slug}"

      @dir = page_number == 1 ? root : "#{root}/page/#{page_number}"
      @name = "index.html"

      process(@name)

      first = (page_number - 1) * PER_PAGE
      page_posts = posts.slice(first, PER_PAGE) || []

      path = page_number == 1 ?
        "/#{root}/" :
        "/#{root}/page/#{page_number}/"

      metadata = site.data.fetch("taxonomy", {})
      section = metadata.fetch(kind, {})
      custom = section.fetch(slug, {})

      description = custom["description"] ||
        "Explore articles and tutorials about #{name} on Victor Johnson's Blog."

      self.data = {
        "layout" => "taxonomy",
        "title" => "#{name} Articles",
        "description" => description,
        "taxonomy_name" => name,
        "taxonomy_type" => kind,
        "taxonomy_posts" => page_posts,
        "taxonomy_count" => posts.size,
        "page_number" => page_number,
        "total_pages" => total_pages,
        "taxonomy_root" => "/#{root}/",
        "permalink" => path,
        "sitemap" => custom.fetch("index", posts.size >= 2)
      }

      if custom["index"] == false || (posts.size < 2 && !custom.key?("index"))
        self.data["robots"] = "noindex,follow"
      end
    end
  end

  class Generator < Jekyll::Generator
    safe true
    priority :low

    def generate(site)
      {
        "categories" => site.categories,
        "tags" => site.tags
      }.each do |kind, groups|
        groups.each do |name, posts|
          next if posts.empty?

          ordered = posts.sort_by { |p| p.date }.reverse
          pages = (ordered.size.to_f / PER_PAGE).ceil

          (1..pages).each do |number|
            site.pages << TaxonomyPage.new(
              site, kind, name, ordered, number, pages
            )
          end
        end
      end
    end
  end
end
