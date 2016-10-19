module Markdownify

  def self.render(source)
    markdown.render(source).html_safe
  end

  private

  def self.markdown
    @markdown ||= Redcarpet::Markdown.new(renderer, options)
  end

  def self.renderer
    Redcarpet::Render::HTML
  end

  def self.options
    {
      autolink: true,
      no_intra_emphasis: true,
      fenced_code_blocks: true,
      disable_indented_code_blocks: true
    }
  end
end
