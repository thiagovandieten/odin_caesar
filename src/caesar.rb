UC_START = 65
UC_END = 90
LC_START = 97
LC_END = 122

def caesar_cipher(input, offset)
  return 'Your string is not ASCII compatible for the conversion!' unless input.ascii_only?

  string_in_bytes = input.bytes
end
