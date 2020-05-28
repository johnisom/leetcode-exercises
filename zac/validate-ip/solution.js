var validIPAddress = function(IP) {
  if (isValidIPv4(IP)) return 'IPv4';
  if (isValidIPv6(IP)) return 'IPv6';
  return 'Neither';
};

function isValidIPv4(IP) {
  if (IP.includes(':')) return false;

  const decimals = IP.split('.');
  let valid = true;

  decimals.forEach(dec => {
    if (dec[0] === '0' && dec.length > 1) valid = false;
    if (+dec > 255) valid = false;
  });

  return valid;
}

function isValidIPv6(IP) {
  const hexes = IP.split(':');
  let valid = true;
  
  hexes.forEach(hex => {
    if (hex.length < 1 || hex.length > 4) valid = false;
  });

  return valid;
}

console.log(validIPAddress("256.256.256.256"));
