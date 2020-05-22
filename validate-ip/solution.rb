def ipv4?(ip_address)
  # Validate that invalid characters don't exist
  return false unless /\A(?:\d{1,3}\.){3}\d{1,3}\z/.match?(ip_address)

  sections = ip_address.split('.')
  sections.each do |section|
    # Validate no leading zeros
    return false if section.size > 1 && section.start_with?('0')
    # Validate in proper range
    return false unless (0..255).cover?(section.to_i)
  end

  # If not invalid, must be valid
  true
end

def ipv6?(ip_address)
  /\A(?:\h{1,4}:){7}\h{1,4}\z/.match?(ip_address)
end

def valid_ip_address(ip_address)
  return 'IPv4' if ipv4?(ip_address)
  return 'IPv6' if ipv6?(ip_address)

  'Neither'
end

# Test cases: all print true
puts ip_version_of('127.0.0.1') == 'IPv4'
puts ip_version_of('127.4.255.1') == 'IPv4'
puts ip_version_of('10.0.0.46') == 'IPv4'
puts ip_version_of('255.255.255.255') == 'IPv4'
puts ip_version_of('0000:0000:0000:0000:0000:0000:0000:0000') == 'IPv6'
puts ip_version_of('ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff') == 'IPv6'
puts ip_version_of('fAf5:f0f5:5:bCd5:fff5:0:fff5:54ff') == 'IPv6'
puts ip_version_of('234:f6d:3:000:0:2:234d:43') == 'IPv6'
puts ip_version_of('0ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff') == 'Neither'
puts ip_version_of('%sadf4d sf;lka j3') == 'Neither'
puts ip_version_of('127.0.255.256') == 'Neither'
puts ip_version_of('127:0:0:1') == 'Neither'
