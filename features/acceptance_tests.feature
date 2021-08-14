# language: en
# Angie Patricia Argudo Duarte, Jocelyn Chicaiza (ratings)
# (developer)
Feature: Search games by ratings and developer

    @gamesByRaTING
    Scenario: Filter games that has rating ["E","M"]
    Given a set of games
     | NAME                       | RELEASE DATE | DEVELOPER            | RATE   |
     | The Witcher 3: Wild Hunt   | 2015         | CD Projekt           | M      |
     | Splatoon                   | 2016         | Nintendo             | T      |
     | Super Smash Bros. Ultimate | 2018         | Bandai Namco Studios | E      |
     | The Last of Us             | 2013         | Naughty Dog          | M      |
    Given a list of ratings ["E","M"]
    When the user search games by rating
    Then 3 games will match
    Then the names of these games are
    | NAME                       |
    | Super Smash Bros. Ultimate |
    | The Witcher 3: Wild Hunt   |
    | The Last of Us             | 

  @gamesByRatings
  Scenario: Filter games by ratings without finding result
      Given a set of games
     | NAME                       | RELEASE DATE | DEVELOPER            | RATE   |
     | The Witcher 3: Wild Hunt   | 2015         | CD Projekt           | M      |
     | Splatoon                   | 2016         | Nintendo             | T      |
     | Super Smash Bros. Ultimate | 2018         | Bandai Namco Studios | E      |
     | The Last of Us             | 2013         | Naughty Dog          | M      |
      Given the user enters the ratings: "A"
      When the user search games by ratings
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