# How secure is your business WiFi?

This projects tries to recolect the most used WiFi patterns in hotels, restaurants, etc. and allows you to check if you are falling in the same error with weak patterns.

The only information needed to generate a list of WiFi passwords is the name of the business. For example.

```
./wifipat.sh Hotel
```

To check if your WiFi password is in the list, you can do something like this (assuming your wifi password is `hotel2019`):

```
./wifipat.sh Hotel | grep hotel2019
```

## Note
Please, don't use real names of business when refering to them (issues, Pull Requests, code, ...)