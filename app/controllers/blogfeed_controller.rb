class BlogfeedController < ApplicationController
  def index
    url = ENV.fetch "BLOG_RSS_FEED_URL", "https://medium.com/feed/dataservicesblog"
    @entries = Feedjira::Feed.fetch_and_parse url
    render json: @entries.to_json
  end
end
