# README

## Overivew

This was a short exercise designed to practice my API skills. The aim was to set up an API providing JSON data on non-alcoholic drinks in a short amount of time.

## Setup

Download the repo and push it to a host such as heroku.
Run db:migrate and db:seed to populate with sample data.

## Completed steps

- Set up db and api
- Hosted on heroku
- Use a serializer to structure the JSON, enabling nested data
- Enable curl commands to get and post data

## Existing blockers

- Creating a drink requires knowing the manufacturer id. Without a front end to fetch and store this, how can the user know what the manufacturer id is?
- Solve this by taking manufacturer name as a parameter, then calling set_manufacturer, finding the manufacturer's ID, and defining the manufacturer params in light of this

## Paths (for command line)

To display drinks:
- curl https://non-alc.herokuapp.com/drinks 

To display manufacturers:
- curl https://non-alc.herokuapp.com/manufacturers

To create manufacturer:
- curl -X POST -H "Content-Type: application/json" \
    -d '{"manufacturer": {"name": "Becks", "year_founded": "1873", "country_founded": "Germany"} }' \
    https://non-alc.herokuapp.com/manufacturers

To create drink:
- curl -X POST -H "Content-Type: application/json" \
    -d '{"drink": { "manufacturer_id": 4, "name": "Blue", "drink_type": "lager", "concentration": 0.05 } }' \
    https://non-alc.herokuapp.com/drinks

## Blockers overcome, reverse chronological

- Serializer wouldn't dispaly desired information
- The initial db setup and interrelations were incorrect, due to mis-use of singular and plurals

- Can no longer get api running on local host, an error when running bin/rails s
- Same error when pushing to heroku. Problem is fundamental to rails, must be addressed before proceeding. Not sure what caused the error in the first place. Probably caused by a gem called gem, now hashed out in gemfile

- Recurring problem with the platform: Your bundle only supports platforms ["x86_64-darwin-20"] but your local platform is x86_64-linux
- Fixed by executing: bundle lock --add-platform x86_64-linux.

## Next steps

- Clarify error messages and responses

## Possible next steps

- Create a web-scraper or file-scraper to auto-populate additional information

