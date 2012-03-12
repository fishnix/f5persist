F5 Persistence Parser
---------------------

This is a simple app to take a persistence list and parse it into human grokable web-speak.

It's not that smart, so you need to feed it the output of `show persistence`.  

This has only been tested on BigIP v11.x

Getting Started
---------------------

1. Clone this app

2. bundle install

3. bundle exec rake db:migrate

4. fire it up (assuming local mode)
    rails s

4. Do a persistence dump on your BigIP
    tmsh show ltm persistence persist-records all-records > /var/tmp/persistence.txt

5. Transfer that txt file to a place you can upload to this app

6. Visit the service (http://localhost:3000)

7. Upload your persistence dump
    - Click New F5 persist list
    - Give it a name
    - Choose your file
    - Click 'Save'

8. Have 'fun'