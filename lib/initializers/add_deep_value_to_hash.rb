class Hash
  def deep_value(*ks)
    if ks.size == 1
      return self[ks.shift]
    else
      val = ks.shift
      return (self[val].is_a?(Hash) ? self[val].deep_value(*ks) : nil)
    end
  end
  
  alias dv deep_value
end

class NilClass
  def deep_value(*ks)
    nil
  end

  alias dv deep_value
end
