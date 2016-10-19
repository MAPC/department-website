require 'markdownify'

module ApplicationHelper

  include ActionView::Helpers::TextHelper

  def markdown(source)
    Markdownify.render(source)
  end

  def first_sentence_of(text, options={})
    sentence = text.match(/(^.*?[a-z]{2,}[.!?])\s+\W*[A-Z]/).captures.first
    if length = options[:truncate]
      truncate sentence, length: length
    else
      sentence
    end
  rescue StandardError => e
    Rails.logger.warn e.message
    return ''
  end

end
