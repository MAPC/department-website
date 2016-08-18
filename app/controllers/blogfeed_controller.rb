class BlogfeedController < ApplicationController
  def index
    url = ENV.fetch "BLOG_RSS_FEED_URL", "https://medium.com/feed/dataservicesblog"
    @entries = Feedjira::Feed.fetch_and_parse(url)
                              .entries
                              .map { |entry| entry.inject({}) { |obj, attr| obj[attr[0]] = attr[1]; obj } }
                              .to_json
    render json: @entries
  end
end
