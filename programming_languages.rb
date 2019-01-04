def reformat_languages(languages)
  hash_format = {}

  languages.each do |style, language_values|
    language_values.each do |language, value_hash|
      type = value_hash.keys[0]

      if hash_format[language] == nil
        hash_format[language] = {}
      end
      hash_format[language][type] = value_hash[:type]

      if hash_format[language][:style] == nil
        hash_format[language][:style] = [style]
      else
        hash_format[language][:style] << style
      end
    end
  end

  return hash_format
end
