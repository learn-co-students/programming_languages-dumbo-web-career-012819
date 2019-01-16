require 'pry'

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, library|
    library.each do |language, type|
      type.each do |t, value|
        if !new_hash[language]
          new_hash[language] = {:type => value, :style => []}
        end
        if new_hash[language][:style] == []
          new_hash[language] = {:type => value, :style => [style]}
          # binding.pry
        else
          new_hash[language][:type => value]
          new_hash[language][:style] << style
        end
      end
    end
  end
  new_hash
end

reformat_languages(languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
})
