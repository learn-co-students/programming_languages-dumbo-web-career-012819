require 'pry'

def reformat_languages(languages)
  new_hash = {}
  # :oo => {
  #   :ruby => {
  #     :type => "interpreted"
  #   },
  # style_hash = {}
  languages.each do |style, language_hash|
    language_hash.each do |head, body_hash|
      new_hash[head] = body_hash
      new_hash[head][:style] = []
      # new_hash[head][:style] = style_hash
    end
  end

  languages.each do |style, language_hash|
    language_hash.each do |head, body_hash|
      # new_hash[head][:style] << style if style == :oo
      new_hash[head][:style] << style
    end
  end


  # binding.pry
  new_hash
end
