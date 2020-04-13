class CoreExt
  String.class_eval do
    def to_squawk
      "squawk! #{self}".strip
    end
  end
  Hash.class_eval do
    def method_missing(key, *args)
      text = key.to_s
      if text[-1,1] == "="  # if the key ends with = set a value
        self[text.chop.to_sym] = args[0] # Strip = from key
      else                               # otherwise
        self[key]                 # just return the key value
      end
    end
  end
end
