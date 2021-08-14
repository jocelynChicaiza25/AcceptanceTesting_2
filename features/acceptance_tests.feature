# language: en

Feature: Search games by manufacturer

  @gamesByName
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