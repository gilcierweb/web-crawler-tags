#!/usr/bin/env ruby

class CrawlerTags

  attr_accessor :url

  def initialize (url)
    @url = url
  end

  def strip_url(url)
    url.gsub("http://", "").gsub("https://", "").gsub("www.", "").gsub("/", "").gsub(".", "-")
  end

  def crawler_data

    tags = nil

    html = open(@url)
    document = Nokogiri::HTML(html)

    url_folder = strip_url(@url)
    dir = "#{Rails.root}/public/sites/#{url_folder}/"
    Dir.mkdir(dir) unless File.directory?(dir)

    document.css('body').each do |tag|

      h1 = tag.search('h1').map(&:text)
      h2 = tag.search('h2').map(&:text)
      h3 = tag.search('h3').map(&:text)
      h4 = tag.search('h4').map(&:text)
      h5 = tag.search('h5').map(&:text)
      h6 = tag.search('h6').map(&:text)
      link = tag.search('a').map { |link| link['href'] }

      document.css("img").each do |item|
        if item['src'] =~ /([^\/]+)$/
          File.open(File.join(dir, $1), 'wb') { |f| f.write(open(item['src']).read) }
        end
      end

      return tags = {
          h1: h1.to_s,
          h2: h2.to_s,
          h3: h3.to_s,
          h4: h4.to_s,
          h5: h5.to_s,
          h6: h6.to_s,
          link: link.to_s,
          site_id: 1
      }

    end

  end

end

# use
# tags =CrawlerTags.new(url)
# tags.crawler_data
