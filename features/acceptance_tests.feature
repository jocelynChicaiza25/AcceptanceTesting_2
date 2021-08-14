# language: en
# Angie Patricia Argudo Duarte, Jocelyn Chicaiza (ratings)
# (developer)
Feature: Search games by rating and developer

  @gamesByRatings
  Scenario: Filter games by rating without finding result
      Given a set of games
     | NAME                       | RELEASE DATE | DEVELOPER            | RATE   |
     | The Witcher 3: Wild Hunt   | 2015         | CD Projekt           | M      |
     | Splatoon                   | 2016         | Nintendo             | T      |
     | Super Smash Bros. Ultimate | 2018         | Bandai Namco Studios | E      |
     | The Last of Us             | 2013         | Naughty Dog          | M      |
      Given the user enters the rating: ["xyz"]
      When the user search games by rating
      Then 0 games will match
      And the following message is displayed: No game with the specified rating was found.

  @gamesByDeveloper
  Scenario: Filter games developed by "Nintendo"
      Given a set of games
     | NAME                       | RELEASE DATE | DEVELOPER            | RATE   |
     | The Witcher 3: Wild Hunt   | 2015         | CD Projekt           | M      |
     | Splatoon                   | 2016         | Nintendo             | T      |
     | Super Smash Bros. Ultimate | 2018         | Bandai Namco Studios | E      |
     | The Last of Us             | 2013         | Naughty Dog          | M      |
      Given the user enters the developer: Nintendo
      When the user search games by study
      Then the names of these games are
      | NAME                       |
      | Splatoon                   |