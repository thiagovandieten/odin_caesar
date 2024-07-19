UC_START = 65
UC_END = 90
LC_START = 97
LC_END = 122

def caesar_cipher(input, offset)
  return 'Your string is not ASCII compatible for the conversion!' unless input.ascii_only?

  string_in_bytes = input.bytes
  new_bytes = string_in_bytes.map do |chr|
    # Determine lower_case or higher case
    is_lowercase = determine_casing(chr)
  new_bytes.join
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
