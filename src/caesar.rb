UC_START = 65
UC_END = 90
LC_START = 97
LC_END = 122

def caesar_cipher(input, offset)
  return 'Your string is not ASCII compatible for the conversion!' unless input.ascii_only?

  string_in_bytes = input.bytes
  new_bytes = string_in_bytes.map do |chr|
    # Add chr with no processing if it's not a letter
    next(chr.chr) if chr < UC_START || chr > LC_END

    is_lowercase = determine_casing(chr)
    increase_chr = chr + offset
    new_position = overflow_correction(increase_chr, is_lowercase)
    new_position.chr
  end
  new_bytes.join('').encode('UTF-8')
end

def determine_casing(chr)
  case chr
  when LC_START..LC_END
    true
  when UC_START..UC_END
    false
  else
    'You have entered a incompatible ASCII'
  end
end

def overflow_correction(chr, is_lowercase)
  if is_lowercase && chr > LC_END
    overflow = chr - LC_END - 1
    new_position = LC_START + overflow
  elsif !is_lowercase && chr > UC_END
    overflow = chr - UC_END - 1
    new_position = UC_START + overflow
  else
    new_position = chr
  end
  new_position
end
