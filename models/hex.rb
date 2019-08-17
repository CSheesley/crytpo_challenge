class Hex
  # attr_reader :encoded

  def initialize(encoded_string)
    @encoded = encoded_string
  end

  def decoded
    [@encoded].pack("H*")
  end

  def to_base_64
    [decoded].pack("m0")
  end

end
