require 'markdownify'

module ApplicationHelper

  def markdown(source)
    Markdownify.render(source)
  end

end
