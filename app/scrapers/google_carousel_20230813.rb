# frozen_string_literal: true

module Scrapers
  # Carousel scraper adjusted to the current Google SERP output
  # Named after the date of source files for additional examples
  class GoogleCarousel20230813 < GoogleCarousel
    private

    def single_box_class
      parsed.css('g-scrolling-carousel a').first['class']
    end

    def heading
      parsed.css('g-scrolling-carousel').first.previous_element.css('span').last.text.downcase
    end

    def link_element
      @link_element ||= current_element
    end
  end
end
