# How secure is your business WiFi?

This projects tries to recolect the most used WiFi patterns in hotels, restaurants, etc. and allows you to check if your are falling in the same error.

The only information needed to generate a list of WiFi passwords is the name of the business. For example.

```
./wifipat.sh Hotel
```

To check if your WiFi password is in the list, you can do something like this (assuming your wifi password is `hotel2019`):

```
./wifipat.sh Hotel | grep hotel2019
```
