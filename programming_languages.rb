def reformat_languages(languages)
  # sets up empty hash
  new_hash = {}
  # foe each language first iteration
  languages.each do |l_style, l_values|
    # for the values of each language iterate again
    l_values.each do |type, value|
      # returns true if given key is equal to type
      if new_hash.key?(type)
        # add the style of that l_value into new hash array
        new_hash[type][:style] << l_style
      else
        # adds contents of hashes 
        new_hash[type] = value.merge!({:style => [l_style]})
      end
    end
  end
  new_hash
end
