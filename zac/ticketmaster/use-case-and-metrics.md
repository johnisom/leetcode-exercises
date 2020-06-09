# Functional System Design

## Workflow for buying a ticket
- The user searches for one of the following categories: event, performer, or venue.

- As the user is typing their query, 5 links of each category are displayed as suggestions and updated as you continue to type.

- When the user submits their query, a new page is loaded and two types of results are displayed: those events that are close to the user's location, and those that are most similar to the user's search category.

- The user then has the option to purchase tickets for a specific event by clicking on a 'See Tickets' on that event.

- Clicking this link takes the user to an event page, where around 20 tickets are listed by price.

- Scrolling to the bottom of the list automatically loads another 20 or so tickets.

- The user then selects the tickets they want and moves on to purchase, which requires them to be signed in.

- The user purchases their order through a 3rd party app and receives a validation of payment.

## Metrics - NFL Opens Its Season
- Half a billion tickets sold per year = 1.3 million per day
  - upper limit of 2.5 million per day (taking average day and adding nfl schedule release amount)
  - lower limit of .5 million

- Assuming max of 2.5 million tickets sold in one day (750 writes per second)
- Assuming 200x reads per write
- Roughly 150k reads per second

- Double it during peak time (1500 writes per second, 300k reads per second)
