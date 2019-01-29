require "pry"
def reformat_languages(languages)
  new_hash = {}
  languages.each do |k, v|
    v.each do |lang, type|
      new_hash[lang] = type
      new_hash[lang][:style] = []
    end
  end
  languages.each do |k, v|
    v.each do |lang, type|
      new_hash[lang][:style] << :oo if k == :oo
      new_hash[lang][:style] << :functional if k == :functional
    end
  end
  new_hash
end