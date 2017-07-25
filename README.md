# Trial GraphQL Project
A GraphQL project, submitted for a Ruby on Rails programming trial.
> For a list of steps taken to complete this trial, please see the [Trial Steps](https://github.com/obrientimothya/trial/wiki/Trial-Steps) Wiki page.
## Project Brief
From a blank repo, implement a Ruby on Rails GraphQL API (https://github.com/rmosolgo/graphql-ruby) with a single model "product" that has a "title" and "price" attribute. I should be able to query all the products in the table with a GraphQL query like so:
```
query products {
  products {
    title
    price
  }
}
```
### Other Requirements
- No need for any UI for this app.
- Bonus points for rspec tests against the model and/or API endpoint.
```
            ,    _
           /|   | |  > I say we give some bonus points 
         _/_\_  >_<    for the ASCII art.
        .-\-/.   |
       /  | | \_ |
       \ \| |\__(/
       /(`---')  |
      / /     \  |
   _.'  \'-'  /  |
   `----'`=-='   '
```

## Validating the Trial

Clone the repo, then

```bash
bundle install
rails db:migrate db:test:prepare
rails db:seed
rspec
rails s
curl -X POST -H "Content-Type: application/json" -d '{"query": "{products{title price}}"}' http://localhost:3000/graphql
```
