module Cryptopals
  module Basics
    def hex_to_b64(hexdigest)
      [[hexdigest].pack('H*')].pack('m0')
    end

    def fixed_xor(str1, str2)
      raise ArgumentError, 'Strings not equal' unless str1.length.equal?(str2.length)
      [str1].pack("H*").unpack("C*").zip([str2].pack("H*").unpack("C*")).map{|b1, b2| b1 ^ b2}.pack("C*").unpack("H*").join
    end
  end
end

