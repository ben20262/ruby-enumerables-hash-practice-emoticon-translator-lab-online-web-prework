require 'yaml'


def load_library(file)
  emotes = YAML.load_file(file)
  meaning = emotes.keys
  cons = emotes.values
  puts [[:get_meaning, meaning], [:get_emoticon, cons]].to_h
end

def get_japanese_emoticon

end

def get_english_meaning

end
