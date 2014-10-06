class Event < ActiveRecord::Base
    def self.search(search_text)
    if search_text.blank?
      EmptyResults.new
    else
      client = Songkickr::Remote.new ENV["SK_API_SK"]
      client.events(type: 'concert', artists: "#{search_text}")
    end
  end

  class EmptyResults
    def results
      []
    end
  end
end
