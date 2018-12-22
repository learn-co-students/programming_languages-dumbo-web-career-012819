#{
  #:ruby => {
  #  :type => "interpreted",
  #  :style => [:oo]
#  },
#:javascript => {
  #  :type => "interpreted",
  #  :style => [:oo, :functional]
#  },
#  :python => {
  #  :type => "interpreted",
#    :style => [:oo]
#  },
#  :java => {
#    :type => "compiled",
#  :clojure => {
#    :type => "compiled",
#    :style => [:functional]
#  },
#  :erlang => {
  #  :type => "compiled",
#    :style => [:functional]
#  },
#  :scala => {
#    :type => "compiled",
#    :style => [:functional]
#  }
#}


require 'pry'
def reformat_languages(languages)

new_hash = {}

  languages.each do |oo_or_f,lang_hash|
    lang_hash.each do |language, attributes_hash|
      if !new_hash[language]
         new_hash[language] = {:style => [oo_or_f], :type => attributes_hash[:type]}
       else
         new_hash[language][:style].push(oo_or_f)
#binding.pry
   end
  end
 end
new_hash
end





# {
#   :oo => {
  #   :ruby => {
    #   :type => "interpreted"
     #},
     #:javascript => {
       #:type => "interpreted"
     #},
     #:python => {
       #:type => "interpreted"
     #},
     #:java => {
      # :type => "compiled"
     #}
   #},
   #:functional => {
     #:clojure => {
       #:type => "compiled"
     #},
    # :erlang => {
      # :type => "compiled"
     #},
     #:scala => {
       #:type => "compiled"
    # },
     #:javascript => {
       #:type => "interpreted"
     #}

# #}
 #}#
