# Project brief

Use this user-owned document to describe a new project, milestone, or complex
idea before running `$start-work`. Replace the prompts below with as much
context as you currently have. It is fine to leave decisions unresolved; the
planner will ask for clarification rather than guess.

## Goal

Develop an app that everyday fetches a MTG card list from a csv on google drive, and displays the cards in a list that can be ordered by average price and/or meta share on the most popular formats (standard, modern, pauper, commander, etc).

## People and use cases

This is a single user app, no authentication needed.

## Important behavior

- import the csv from google drive every day
- sync the local data with the imported data, adding new cards and removing cards that are no longer in the csv
- display the cards using a table view, by the card image, name, average price and meta share on the most selected format
- user can select/filter the formats, and order the list by average price or meta share

## Constraints

_List fixed technologies, compatibility needs, deadlines, security concerns,
or other limits._

## Out of scope

_What should this work deliberately avoid or postpone?_

## Known decisions

_Record choices that are already settled and who approved them._

## Open questions

_List anything you are unsure about or want the planner to help clarify._
