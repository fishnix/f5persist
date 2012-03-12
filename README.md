F5 Persistence Parser
---------------------

This is a simple app to take a persistence list and parse it into human grokable web-speak.

It's not that smart, so you need to feed it the output of `show persistence`.  

This has only been tested on BigIP v11.x

Getting Started
---------------------

1. Clone this app

2. bundle install

3. Do a persistence dump on your BigIP
    tmsh show ltm persistence persist-records all-records > /var/tmp/persistence.txt

4. Transfer that txt file to a place you can upload to this app and upload it