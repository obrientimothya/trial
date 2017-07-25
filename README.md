# Trial Project
For a list of steps taken to complete this trial, please see the Wiki
page https://github.com/obrientimothya/trial/wiki/Trial-Steps

```
            ,    _
           /|   | |  > henceforth, bonus points shall <
         _/_\_  >_<  > be awarded for ASCII art       <
        .-\-/.   |
       /  | | \_ |
       \ \| |\__(/
       /(`---')  |
      / /     \  |
   _.'  \'-'  /  |
   `----'`=-='   '
```

# Validating

Clone the repo, then

```bash
bundle install
rails db:migrate db:test:prepare
rspec
rails s
curl -X POST -H "Content-Type: application/json" -d '{"query": "{products{title price}}"}' http://localhost:3000/graphql
```
