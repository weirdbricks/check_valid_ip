# check_valid_ip
Checks if a string is a valid IP or not

# Usage

## Test with an IPv4 IP

```
./check_valid_ip 127.0.0.1
OK - "127.0.0.1" is a valid IP address - Family: "INET"
```

The exit code is 0

## Test with an IPv6 IP

```
./check_valid_ip ::1
OK - "::1" is a valid IP address - Family: "INET6"
```

The exit code is 0

## Test with something else!

```
./check_valid_ip nopenopenope
FAIL - "nopenopenope" is not a valid IP address
```

The exit code is 1

```
./check_valid_ip 10.0.0.256
FAIL - "10.0.0.256" is not a valid IP address
```

The exit code is 1

# Build

* Install Crystal 0.27
* Checkout this repo
* Build with: `crystal build --static --release check_valid_ip.cr`
