# Passport service

This service is used to provide details about passports

Compared with Bookmark and Client services it does not actually get data from the database. Instead it gets data from other services and aggregates the data (e.g. Passport data represent aggregation between contacts and bookmarks with the same id).

In addition to the functionality provided in the Bookmarks service this module has the following functionality:
- Authentication token is forwarded to other services that use it (done automatically by enabling resource security)
- Usage of Zuul/Hystrix/Ribbon/Feign