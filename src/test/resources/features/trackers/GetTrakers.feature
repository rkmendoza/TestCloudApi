Feature: As a user of riskIQ platform I want to Get User Trakers

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers with wrong credentials the response retrieve error message and code 401 error and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | about.me               |
    When users with wrong credentials want Get User Trakers with the values
      | key          | value                  |
      | query        | ##queryArtifact        |
      | type         | AboutmeId              |
    Then the api should response with code 401
    And Check JSON schema "project/ErrorMessage.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: 51.la with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | 51.la                  |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | 51laId                 |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: About.me with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | About.me               |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | AboutmeId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Addthis.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Addthis.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | AddThisPubId           |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Addthis.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Addthis.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | AddThisUsername        |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Authorstream.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Authorstream.com       |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | AuthorstreamId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Bitbucket.org with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Bitbucket.org          |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | BitbucketcomId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Bitly.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Bitly.com              |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | BitlyId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Cheezburger.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Cheezburger.com        |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | BitlyCheezburgerId     |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Clicky.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Clicky.com             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | ClickyId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Colourlovers.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Colourlovers.com       |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | ColourloversId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Diigo.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Diigo.com              |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | DiigoyId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Disqus.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Disqus.com              |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | DisqusId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Engadget.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Engadget.com           |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | EngadgetId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Etsy.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Etsy.com               |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | EtsyId                 |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Facebook.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Facebook.com           |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FacebookId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Favstar.fm with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Favstar.fm             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FavstarId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Ffffound.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Ffffound.com           |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FfffoundId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Flavors.me with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Flavors.me             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FlavorsId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Flickr.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Flickr.com             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FlickrId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Foodspotting.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Foodspotting.com       |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FoodspottingId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Freesound.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Freesound.com          |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FreesoundId            |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: GitHub.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | GitHub.com             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | GitHubId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: GitHub.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | GitHub.com             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | GithubId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: analytics.google.com/analytics/web with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | analytics.google.com   |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | GoogleAnalyticsTrackingId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: plus.google.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | plus.google.com        |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | GooglePlusId           |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: google.com/intl/es/tagmanager with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | google.com             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | GoogleTagManagerId     |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Hubpages.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Hubpages.com           |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | HubpagesId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Imgur.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Imgur.com              |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | ImgurId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Instagram.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Instagram.com          |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | InstagramId            |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: lithium.com/products/klout with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | lithium.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | KloutId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Lanyrd.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Lanyrd.com             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | LanyrdId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: last.fm/es with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | last.fm                |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | LastfmId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Librarything.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Librarything.com       |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | LibrarythingId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: LinkedIn.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Linkedin.com           |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | LinkedInId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: LinkedIn.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | LinkedIn.com           |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | LinkedinId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Marketingland.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Marketingland.com      |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | MarketinglandId        |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Mixpanel.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Mixpanel.com           |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | MixpanelId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Muckrack.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Muckrack.com           |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | MuckrackId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Myanimelist.net with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Myanimelist.net        |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | MyanimelistId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Myfitnesspal.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Myfitnesspal.com       |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | MyfitnesspalId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: NewRelic.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | NewRelic.com           |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | NewRelicId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Optimizely.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Optimizely.com         |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | OptimizelyId           |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: us.pandora.net with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | us.pandora.net         |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PandoraId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Picasa.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Picasa.com             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PicasaId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Pinkbike.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Pinkbike.com           |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PinkbikeId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Pinterest.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Pinterest.com          |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PinterestId            |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Plancast.co.uk with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Plancast.co.uk         |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PlancastId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Plurk.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Plurk.com              |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PlurkId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Pornhub.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Pornhub.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PornhubId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: raptor.martincarlisle.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | raptor.martincarlisle.com              |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | RaptorId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Readability.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Readability.com        |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | ReadabilityId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Reddit.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Reddit.com             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | RedditId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Redtube.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Redtube.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | RedtubeId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: es.slideshare.net with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | es.slideshare.net      |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SlideshareId           |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Smugmug.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Smugmug.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SmugmugId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: SmuleI.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | SmuleI.com             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SmuleIId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Soundcloud.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Soundcloud.com         |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SoundcloudId           |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Soup.io with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Soup.io                |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SoupId                 |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Speakerdeck.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Speakerdeck.com        |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SpeakerdeckId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Sporcle.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Sporcle.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SporcleId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Stackoverflow.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Stackoverflow.com      |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | StackoverflowId        |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Steamcommunity.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Steamcommunity.com     |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SteamcommunityId       |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Stumbleupon.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Stumbleupon.com        |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | StumbleuponId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Thesixtyone.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Thesixtyone.com        |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | ThesixtyoneId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: tribegroup.co with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | tribegroup.co          |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | TribeId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Tripit.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Tripit.com             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | TripitId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Tumblr.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Tumblr.com             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | TumblrId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Twitpic.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Twitpic.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | TwitpicId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Twitter.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Twitter.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | TwitterId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Untappd.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Untappd.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | UntappdId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Ustream.tv with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Ustream.tv             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | UstreamId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Wattpad.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Wattpad.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | WattpadId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Wefollow.co with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Wefollow.co            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | WefollowId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: whos.amung.us with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | whos.amung.us          |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | WhosAmungUsId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: WordPress.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | WordPress.com          |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | WordPressId            |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: WordPress.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | WordPress.com          |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | WordPress              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Support.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Support.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SupportId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Xanga.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Xanga.com              |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | XangaId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Xfire.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Xfire.com              |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | XfireId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Social.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Social.com             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SocialId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Xhamster.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Xhamster.com           |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | XhamsterId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Xvideos.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Xvideos.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | XvideosId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: metrica.yandex.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | metrica.yandex.com     |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | YandexMetricaCounterId |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: youtube.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | youtube.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | YouTubeChannel         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: youtube.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | youtube.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | YouTubeId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: youtube.com with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | youtube.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | YoutubeId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: 51.la with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | 51.la                  |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | 51laId                 |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: About.me with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | About.me               |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | AboutmeId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Addthis.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Addthis.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | AddThisPubId           |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Addthis.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Addthis.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | AddThisUsername        |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Authorstream.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Authorstream.com       |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | AuthorstreamId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Bitbucket.org with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Bitbucket.org          |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | BitbucketcomId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Bitly.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Bitly.com              |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | BitlyId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Cheezburger.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Cheezburger.com        |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | BitlyCheezburgerId     |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Clicky.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Clicky.com             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | ClickyId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Colourlovers.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Colourlovers.com       |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | ColourloversId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Diigo.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Diigo.com              |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | DiigoyId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Disqus.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Disqus.com              |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | DisqusId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Engadget.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Engadget.com           |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | EngadgetId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Etsy.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Etsy.com               |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | EtsyId                 |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Facebook.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Facebook.com           |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FacebookId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"


  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Favstar.fm with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Favstar.fm             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FavstarId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Ffffound.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Ffffound.com           |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FfffoundId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Flavors.me with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Flavors.me             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FlavorsId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Flickr.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Flickr.com             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FlickrId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Foodspotting.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Foodspotting.com       |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FoodspottingId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Freesound.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Freesound.com          |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FreesoundId            |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: GitHub.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | GitHub.com             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | GitHubId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: GitHub.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | GitHub.com             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | GithubId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: analytics.google.com/analytics/web with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | analytics.google.com   |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | GoogleAnalyticsTrackingId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: plus.google.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | plus.google.com        |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | GooglePlusId           |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: google.com/intl/es/tagmanager with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | google.com             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | GoogleTagManagerId     |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Hubpages.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Hubpages.com           |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | HubpagesId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Imgur.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Imgur.com              |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | ImgurId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Instagram.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Instagram.com          |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | InstagramId            |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: lithium.com/products/klout with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | lithium.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | KloutId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Lanyrd.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Lanyrd.com             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | LanyrdId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: last.fm/es with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | last.fm                |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | LastfmId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Librarything.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Librarything.com       |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | LibrarythingId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: LinkedIn.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Linkedin.com           |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | LinkedInId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: LinkedIn.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | LinkedIn.com           |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | LinkedinId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Marketingland.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Marketingland.com      |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | MarketinglandId        |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Mixpanel.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Mixpanel.com           |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | MixpanelId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Muckrack.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Muckrack.com           |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | MuckrackId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Myanimelist.net with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Myanimelist.net        |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | MyanimelistId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Myfitnesspal.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Myfitnesspal.com       |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | MyfitnesspalId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: NewRelic.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | NewRelic.com           |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | NewRelicId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Optimizely.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Optimizely.com         |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | OptimizelyId           |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: us.pandora.net with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | us.pandora.net         |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PandoraId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Picasa.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Picasa.com             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PicasaId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Pinkbike.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Pinkbike.com           |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PinkbikeId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Pinterest.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Pinterest.com          |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PinterestId            |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Plancast.co.uk with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Plancast.co.uk         |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PlancastId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Plurk.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Plurk.com              |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PlurkId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Pornhub.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Pornhub.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PornhubId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: raptor.martincarlisle.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | raptor.martincarlisle.com              |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | RaptorId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Readability.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Readability.com        |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | ReadabilityId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Reddit.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Reddit.com             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | RedditId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Redtube.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Redtube.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | RedtubeId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: es.slideshare.net with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | es.slideshare.net      |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SlideshareId           |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Smugmug.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Smugmug.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SmugmugId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: SmuleI.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | SmuleI.com             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SmuleIId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Soundcloud.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Soundcloud.com         |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SoundcloudId           |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Soup.io with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Soup.io                |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SoupId                 |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Speakerdeck.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Speakerdeck.com        |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SpeakerdeckId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Sporcle.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Sporcle.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SporcleId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Stackoverflow.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Stackoverflow.com      |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | StackoverflowId        |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Steamcommunity.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Steamcommunity.com     |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SteamcommunityId       |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Stumbleupon.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Stumbleupon.com        |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | StumbleuponId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Thesixtyone.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Thesixtyone.com        |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | ThesixtyoneId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: tribegroup.co with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | tribegroup.co          |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | TribeId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Tripit.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Tripit.com             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | TripitId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Tumblr.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Tumblr.com             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | TumblrId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Twitpic.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Twitpic.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | TwitpicId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Twitter.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Twitter.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | TwitterId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Untappd.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Untappd.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | UntappdId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Ustream.tv with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Ustream.tv             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | UstreamId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Wattpad.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Wattpad.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | WattpadId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Wefollow.co with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Wefollow.co            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | WefollowId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: whos.amung.us with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | whos.amung.us          |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | WhosAmungUsId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: WordPress.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | WordPress.com          |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | WordPressId            |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"


  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: WordPress.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | WordPress.com          |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | WordPress              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"


  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Support.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Support.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SupportId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Xanga.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Xanga.com              |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | XangaId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Xfire.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Xfire.com              |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | XfireId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Social.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Social.com             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SocialId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Xhamster.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Xhamster.com           |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | XhamsterId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Xvideos.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Xvideos.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | XvideosId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: metrica.yandex.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | metrica.yandex.com     |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | YandexMetricaCounterId |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: youtube.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | youtube.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | YouTubeChannel         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: youtube.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | youtube.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | YouTubeId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: youtube.com with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | youtube.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | YoutubeId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: 51.la with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | 51.la                  |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | 51laId                 |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: About.me with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | About.me               |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | AboutmeId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Addthis.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Addthis.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | AddThisPubId           |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Addthis.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Addthis.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | AddThisUsername        |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Authorstream.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Authorstream.com       |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | AuthorstreamId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Bitbucket.org with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Bitbucket.org          |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | BitbucketcomId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Bitly.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Bitly.com              |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | BitlyId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Cheezburger.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Cheezburger.com        |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | BitlyCheezburgerId     |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Clicky.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Clicky.com             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | ClickyId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Colourlovers.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Colourlovers.com       |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | ColourloversId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Diigo.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Diigo.com              |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | DiigoyId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Disqus.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Disqus.com             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | DisqusId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Engadget.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Engadget.com           |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | EngadgetId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Etsy.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Etsy.com               |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | EtsyId                 |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Facebook.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Facebook.com           |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FacebookId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"


  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Favstar.fm with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Favstar.fm             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FavstarId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Ffffound.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Ffffound.com           |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FfffoundId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Flavors.me with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Flavors.me             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FlavorsId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Flickr.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Flickr.com             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FlickrId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Foodspotting.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Foodspotting.com       |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FoodspottingId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Freesound.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Freesound.com          |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FreesoundId            |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: GitHub.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | GitHub.com             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | GitHubId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: GitHub.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | GitHub.com             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | GithubId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: analytics.google.com/analytics/web with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | analytics.google.com   |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | GoogleAnalyticsTrackingId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: plus.google.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | plus.google.com        |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | GooglePlusId           |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: google.com/intl/es/tagmanager with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | google.com             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | GoogleTagManagerId     |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Hubpages.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Hubpages.com           |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | HubpagesId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Imgur.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Imgur.com              |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | ImgurId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Instagram.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Instagram.com          |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | InstagramId            |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: lithium.com/products/klout with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | lithium.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | KloutId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Lanyrd.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Lanyrd.com             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | LanyrdId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: last.fm/es with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | last.fm                |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | LastfmId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Librarything.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Librarything.com       |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | LibrarythingId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: LinkedIn.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Linkedin.com           |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | LinkedInId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: LinkedIn.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | LinkedIn.com           |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | LinkedinId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Marketingland.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Marketingland.com      |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | MarketinglandId        |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Mixpanel.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Mixpanel.com           |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | MixpanelId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Muckrack.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Muckrack.com           |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | MuckrackId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Myanimelist.net with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Myanimelist.net        |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | MyanimelistId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Myfitnesspal.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Myfitnesspal.com       |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | MyfitnesspalId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: NewRelic.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | NewRelic.com           |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | NewRelicId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Optimizely.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Optimizely.com         |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | OptimizelyId           |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: us.pandora.net with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | us.pandora.net         |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PandoraId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Picasa.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Picasa.com             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PicasaId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Pinkbike.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Pinkbike.com           |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PinkbikeId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Pinterest.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Pinterest.com          |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PinterestId            |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Plancast.co.uk with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Plancast.co.uk         |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PlancastId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Plurk.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Plurk.com              |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PlurkId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Pornhub.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Pornhub.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PornhubId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: raptor.martincarlisle.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | raptor.martincarlisle.com              |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | RaptorId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Readability.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Readability.com        |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | ReadabilityId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Reddit.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Reddit.com             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | RedditId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Redtube.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Redtube.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | RedtubeId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: es.slideshare.net with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | es.slideshare.net      |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SlideshareId           |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Smugmug.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Smugmug.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SmugmugId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: SmuleI.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | SmuleI.com             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SmuleIId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Soundcloud.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Soundcloud.com         |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SoundcloudId           |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Soup.io with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Soup.io                |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SoupId                 |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Speakerdeck.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Speakerdeck.com        |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SpeakerdeckId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Sporcle.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Sporcle.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SporcleId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Stackoverflow.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Stackoverflow.com      |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | StackoverflowId        |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Steamcommunity.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Steamcommunity.com     |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SteamcommunityId       |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Stumbleupon.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Stumbleupon.com        |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | StumbleuponId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Thesixtyone.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Thesixtyone.com        |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | ThesixtyoneId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: tribegroup.co with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | tribegroup.co          |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | TribeId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Tripit.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Tripit.com             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | TripitId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Tumblr.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Tumblr.com             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | TumblrId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Twitpic.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Twitpic.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | TwitpicId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Twitter.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Twitter.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | TwitterId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Untappd.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Untappd.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | UntappdId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Ustream.tv with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Ustream.tv             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | UstreamId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Wattpad.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Wattpad.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | WattpadId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Wefollow.co with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Wefollow.co            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | WefollowId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: whos.amung.us with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | whos.amung.us          |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | WhosAmungUsId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: WordPress.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | WordPress.com          |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | WordPressId            |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"


  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: WordPress.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | WordPress.com          |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | WordPress              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"


  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Support.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Support.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SupportId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Xanga.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Xanga.com              |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | XangaId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Xfire.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Xfire.com              |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | XfireId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Social.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Social.com             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SocialId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Xhamster.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Xhamster.com           |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | XhamsterId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Xvideos.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Xvideos.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | XvideosId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: metrica.yandex.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | metrica.yandex.com     |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | YandexMetricaCounterId |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: youtube.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | youtube.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | YouTubeChannel         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: youtube.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | youtube.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | YouTubeId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: youtube.com with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | youtube.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | YoutubeId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"


  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: 51.la with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | 51.la                  |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | 51laId                 |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: About.me with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | About.me               |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | AboutmeId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Addthis.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Addthis.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | AddThisPubId           |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Addthis.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Addthis.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | AddThisUsername        |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Authorstream.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Authorstream.com       |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | AuthorstreamId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Bitbucket.org with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Bitbucket.org          |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | BitbucketcomId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Bitly.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Bitly.com              |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | BitlyId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Cheezburger.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Cheezburger.com        |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | BitlyCheezburgerId     |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Clicky.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Clicky.com             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | ClickyId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Colourlovers.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Colourlovers.com       |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | ColourloversId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Diigo.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Diigo.com              |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | DiigoyId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Disqus.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Disqus.com              |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | DisqusId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Engadget.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Engadget.com           |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | EngadgetId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Etsy.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Etsy.com               |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | EtsyId                 |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Facebook.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Facebook.com           |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FacebookId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"


  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Favstar.fm with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Favstar.fm             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FavstarId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Ffffound.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Ffffound.com           |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FfffoundId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Flavors.me with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Flavors.me             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FlavorsId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Flickr.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Flickr.com             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FlickrId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Foodspotting.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Foodspotting.com       |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FoodspottingId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Freesound.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Freesound.com          |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FreesoundId            |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: GitHub.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | GitHub.com             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | GitHubId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: GitHub.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | GitHub.com             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | GithubId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: analytics.google.com/analytics/web with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | analytics.google.com   |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | GoogleAnalyticsTrackingId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: plus.google.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | plus.google.com        |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | GooglePlusId           |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: google.com/intl/es/tagmanager with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | google.com             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | GoogleTagManagerId     |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Hubpages.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Hubpages.com           |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | HubpagesId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Imgur.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Imgur.com              |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | ImgurId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Instagram.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Instagram.com          |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | InstagramId            |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: lithium.com/products/klout with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | lithium.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | KloutId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Lanyrd.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Lanyrd.com             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | LanyrdId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: last.fm/es with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | last.fm                |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | LastfmId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Librarything.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Librarything.com       |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | LibrarythingId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: LinkedIn.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Linkedin.com           |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | LinkedInId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: LinkedIn.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | LinkedIn.com           |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | LinkedinId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Marketingland.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Marketingland.com      |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | MarketinglandId        |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Mixpanel.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Mixpanel.com           |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | MixpanelId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Muckrack.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Muckrack.com           |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | MuckrackId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Myanimelist.net with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Myanimelist.net        |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | MyanimelistId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Myfitnesspal.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Myfitnesspal.com       |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | MyfitnesspalId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: NewRelic.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | NewRelic.com           |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | NewRelicId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Optimizely.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Optimizely.com         |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | OptimizelyId           |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: us.pandora.net with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | us.pandora.net         |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PandoraId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Picasa.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Picasa.com             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PicasaId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Pinkbike.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Pinkbike.com           |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PinkbikeId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Pinterest.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Pinterest.com          |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PinterestId            |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Plancast.co.uk with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Plancast.co.uk         |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PlancastId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Plurk.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Plurk.com              |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PlurkId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Pornhub.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Pornhub.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PornhubId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: raptor.martincarlisle.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | raptor.martincarlisle.com              |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | RaptorId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Readability.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Readability.com        |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | ReadabilityId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Reddit.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Reddit.com             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | RedditId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Redtube.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Redtube.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | RedtubeId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: es.slideshare.net with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | es.slideshare.net      |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SlideshareId           |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Smugmug.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Smugmug.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SmugmugId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: SmuleI.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | SmuleI.com             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SmuleIId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Soundcloud.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Soundcloud.com         |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SoundcloudId           |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Soup.io with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Soup.io                |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SoupId                 |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Speakerdeck.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Speakerdeck.com        |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SpeakerdeckId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Sporcle.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Sporcle.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SporcleId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Stackoverflow.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Stackoverflow.com      |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | StackoverflowId        |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Steamcommunity.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Steamcommunity.com     |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SteamcommunityId       |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Stumbleupon.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Stumbleupon.com        |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | StumbleuponId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Thesixtyone.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Thesixtyone.com        |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | ThesixtyoneId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: tribegroup.co with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | tribegroup.co          |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | TribeId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Tripit.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Tripit.com             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | TripitId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Tumblr.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Tumblr.com             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | TumblrId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Twitpic.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Twitpic.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | TwitpicId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Twitter.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Twitter.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | TwitterId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Untappd.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Untappd.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | UntappdId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Ustream.tv with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Ustream.tv             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | UstreamId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Wattpad.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Wattpad.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | WattpadId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Wefollow.co with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Wefollow.co            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | WefollowId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: whos.amung.us with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | whos.amung.us          |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | WhosAmungUsId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: WordPress.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | WordPress.com          |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | WordPressId            |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"


  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: WordPress.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | WordPress.com          |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | WordPress              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"


  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Support.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Support.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SupportId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Xanga.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Xanga.com              |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | XangaId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Xfire.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Xfire.com              |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | XfireId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Social.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Social.com             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SocialId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Xhamster.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Xhamster.com           |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | XhamsterId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Xvideos.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Xvideos.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | XvideosId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: metrica.yandex.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | metrica.yandex.com     |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | YandexMetricaCounterId |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: youtube.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | youtube.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | YouTubeChannel         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: youtube.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | youtube.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | YouTubeId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: youtube.com with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | youtube.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | YoutubeId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"


  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: 51.la with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | 51.la                  |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | 51laId                 |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: About.me with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | About.me               |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | AboutmeId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Addthis.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Addthis.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | AddThisPubId           |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Addthis.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Addthis.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | AddThisUsername        |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Authorstream.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Authorstream.com       |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | AuthorstreamId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Bitbucket.org with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Bitbucket.org          |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | BitbucketcomId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Bitly.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Bitly.com              |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | BitlyId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Cheezburger.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Cheezburger.com        |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | BitlyCheezburgerId     |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Clicky.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Clicky.com             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | ClickyId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Colourlovers.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Colourlovers.com       |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | ColourloversId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Diigo.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Diigo.com              |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | DiigoyId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Disqus.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Disqus.com             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | DisqusId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Engadget.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Engadget.com           |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | EngadgetId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Etsy.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Etsy.com               |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | EtsyId                 |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Facebook.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Facebook.com           |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FacebookId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"


  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Favstar.fm with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Favstar.fm             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FavstarId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Ffffound.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Ffffound.com           |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FfffoundId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Flavors.me with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Flavors.me             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FlavorsId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Flickr.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Flickr.com             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FlickrId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Foodspotting.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Foodspotting.com       |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FoodspottingId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Freesound.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Freesound.com          |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FreesoundId            |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: GitHub.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | GitHub.com             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | GitHubId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: GitHub.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | GitHub.com             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | GithubId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: analytics.google.com/analytics/web with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | analytics.google.com   |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | GoogleAnalyticsTrackingId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: plus.google.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | plus.google.com        |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | GooglePlusId           |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: google.com/intl/es/tagmanager with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | google.com             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | GoogleTagManagerId     |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Hubpages.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Hubpages.com           |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | HubpagesId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Imgur.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Imgur.com              |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | ImgurId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Instagram.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Instagram.com          |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | InstagramId            |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: lithium.com/products/klout with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | lithium.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | KloutId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Lanyrd.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Lanyrd.com             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | LanyrdId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: last.fm/es with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | last.fm                |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | LastfmId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Librarything.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Librarything.com       |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | LibrarythingId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: LinkedIn.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Linkedin.com           |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | LinkedInId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: LinkedIn.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | LinkedIn.com           |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | LinkedinId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Marketingland.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Marketingland.com      |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | MarketinglandId        |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Mixpanel.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Mixpanel.com           |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | MixpanelId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Muckrack.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Muckrack.com           |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | MuckrackId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Myanimelist.net with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Myanimelist.net        |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | MyanimelistId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Myfitnesspal.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Myfitnesspal.com       |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | MyfitnesspalId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: NewRelic.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | NewRelic.com           |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | NewRelicId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Optimizely.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Optimizely.com         |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | OptimizelyId           |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: us.pandora.net with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | us.pandora.net         |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PandoraId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Picasa.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Picasa.com             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PicasaId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Pinkbike.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Pinkbike.com           |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PinkbikeId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Pinterest.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Pinterest.com          |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PinterestId            |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Plancast.co.uk with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Plancast.co.uk         |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PlancastId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Plurk.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Plurk.com              |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PlurkId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Pornhub.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Pornhub.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PornhubId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: raptor.martincarlisle.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | raptor.martincarlisle.com              |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | RaptorId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Readability.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Readability.com        |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | ReadabilityId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Reddit.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Reddit.com             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | RedditId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Redtube.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Redtube.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | RedtubeId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: es.slideshare.net with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | es.slideshare.net      |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SlideshareId           |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Smugmug.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Smugmug.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SmugmugId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: SmuleI.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | SmuleI.com             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SmuleIId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Soundcloud.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Soundcloud.com         |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SoundcloudId           |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Soup.io with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Soup.io                |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SoupId                 |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Speakerdeck.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Speakerdeck.com        |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SpeakerdeckId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Sporcle.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Sporcle.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SporcleId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Stackoverflow.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Stackoverflow.com      |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | StackoverflowId        |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Steamcommunity.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Steamcommunity.com     |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SteamcommunityId       |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Stumbleupon.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Stumbleupon.com        |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | StumbleuponId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Thesixtyone.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Thesixtyone.com        |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | ThesixtyoneId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: tribegroup.co with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | tribegroup.co          |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | TribeId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Tripit.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Tripit.com             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | TripitId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Tumblr.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Tumblr.com             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | TumblrId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Twitpic.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Twitpic.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | TwitpicId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Twitter.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Twitter.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | TwitterId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Untappd.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Untappd.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | UntappdId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Ustream.tv with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Ustream.tv             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | UstreamId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Wattpad.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Wattpad.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | WattpadId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Wefollow.co with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Wefollow.co            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | WefollowId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: whos.amung.us with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | whos.amung.us          |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | WhosAmungUsId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: WordPress.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | WordPress.com          |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | WordPressId            |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"


  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: WordPress.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | WordPress.com          |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | WordPress              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"


  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Support.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Support.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SupportId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Xanga.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Xanga.com              |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | XangaId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Xfire.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Xfire.com              |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | XfireId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Social.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Social.com             |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SocialId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Xhamster.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Xhamster.com           |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | XhamsterId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Xvideos.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Xvideos.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | XvideosId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: metrica.yandex.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | metrica.yandex.com     |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | YandexMetricaCounterId |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: youtube.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | youtube.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | YouTubeChannel         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: youtube.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | youtube.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | YouTubeId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: youtube.com with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | youtube.com            |
    When users in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | YoutubeId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: 51.la with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | 51.la                  |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | 51laId                 |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: About.me with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | About.me               |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | AboutmeId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Addthis.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Addthis.com            |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | AddThisPubId           |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Addthis.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Addthis.com            |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | AddThisUsername        |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Authorstream.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Authorstream.com       |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | AuthorstreamId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Bitbucket.org with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Bitbucket.org          |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | BitbucketcomId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Bitly.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Bitly.com              |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | BitlyId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Cheezburger.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Cheezburger.com        |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | BitlyCheezburgerId     |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Clicky.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Clicky.com             |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | ClickyId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Colourlovers.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Colourlovers.com       |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | ColourloversId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Diigo.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Diigo.com              |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | DiigoyId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Disqus.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Disqus.com             |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | DisqusId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Engadget.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Engadget.com           |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | EngadgetId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Etsy.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Etsy.com               |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | EtsyId                 |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Facebook.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Facebook.com           |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FacebookId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"


  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Favstar.fm with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Favstar.fm             |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FavstarId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Ffffound.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Ffffound.com           |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FfffoundId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Flavors.me with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Flavors.me             |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FlavorsId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Flickr.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Flickr.com             |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FlickrId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Foodspotting.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Foodspotting.com       |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FoodspottingId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Freesound.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Freesound.com          |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FreesoundId            |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: GitHub.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | GitHub.com             |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | GitHubId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: GitHub.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | GitHub.com             |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | GithubId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: analytics.google.com/analytics/web with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | analytics.google.com   |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | GoogleAnalyticsTrackingId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: plus.google.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | plus.google.com        |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | GooglePlusId           |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: google.com/intl/es/tagmanager with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | google.com             |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | GoogleTagManagerId     |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Hubpages.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Hubpages.com           |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | HubpagesId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Imgur.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Imgur.com              |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | ImgurId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Instagram.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Instagram.com          |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | InstagramId            |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: lithium.com/products/klout with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | lithium.com            |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | KloutId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Lanyrd.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Lanyrd.com             |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | LanyrdId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: last.fm/es with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | last.fm                |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | LastfmId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Librarything.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Librarything.com       |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | LibrarythingId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: LinkedIn.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Linkedin.com           |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | LinkedInId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: LinkedIn.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | LinkedIn.com           |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | LinkedinId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Marketingland.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Marketingland.com      |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | MarketinglandId        |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Mixpanel.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Mixpanel.com           |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | MixpanelId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Muckrack.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Muckrack.com           |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | MuckrackId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Myanimelist.net with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Myanimelist.net        |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | MyanimelistId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Myfitnesspal.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Myfitnesspal.com       |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | MyfitnesspalId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: NewRelic.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | NewRelic.com           |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | NewRelicId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Optimizely.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Optimizely.com         |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | OptimizelyId           |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: us.pandora.net with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | us.pandora.net         |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PandoraId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Picasa.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Picasa.com             |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PicasaId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Pinkbike.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Pinkbike.com           |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PinkbikeId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Pinterest.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Pinterest.com          |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PinterestId            |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Plancast.co.uk with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Plancast.co.uk         |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PlancastId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Plurk.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Plurk.com              |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PlurkId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Pornhub.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Pornhub.com            |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PornhubId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: raptor.martincarlisle.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | raptor.martincarlisle.com              |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | RaptorId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Readability.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Readability.com        |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | ReadabilityId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Reddit.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Reddit.com             |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | RedditId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Redtube.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Redtube.com            |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | RedtubeId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: es.slideshare.net with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | es.slideshare.net      |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SlideshareId           |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Smugmug.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Smugmug.com            |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SmugmugId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: SmuleI.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | SmuleI.com             |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SmuleIId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Soundcloud.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Soundcloud.com         |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SoundcloudId           |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Soup.io with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Soup.io                |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SoupId                 |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Speakerdeck.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Speakerdeck.com        |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SpeakerdeckId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Sporcle.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Sporcle.com            |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SporcleId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Stackoverflow.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Stackoverflow.com      |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | StackoverflowId        |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Steamcommunity.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Steamcommunity.com     |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SteamcommunityId       |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Stumbleupon.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Stumbleupon.com        |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | StumbleuponId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Thesixtyone.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Thesixtyone.com        |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | ThesixtyoneId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: tribegroup.co with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | tribegroup.co          |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | TribeId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Tripit.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Tripit.com             |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | TripitId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Tumblr.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Tumblr.com             |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | TumblrId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Twitpic.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Twitpic.com            |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | TwitpicId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Twitter.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Twitter.com            |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | TwitterId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Untappd.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Untappd.com            |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | UntappdId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Ustream.tv with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Ustream.tv             |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | UstreamId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Wattpad.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Wattpad.com            |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | WattpadId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Wefollow.co with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Wefollow.co            |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | WefollowId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: whos.amung.us with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | whos.amung.us          |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | WhosAmungUsId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: WordPress.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | WordPress.com          |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | WordPressId            |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"


  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: WordPress.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | WordPress.com          |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | WordPress              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"


  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Support.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Support.com            |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SupportId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Xanga.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Xanga.com              |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | XangaId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Xfire.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Xfire.com              |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | XfireId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Social.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Social.com             |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SocialId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Xhamster.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Xhamster.com           |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | XhamsterId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Xvideos.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Xvideos.com            |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | XvideosId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: metrica.yandex.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | metrica.yandex.com     |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | YandexMetricaCounterId |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: youtube.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | youtube.com            |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | YouTubeChannel         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: youtube.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | youtube.com            |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | YouTubeId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: youtube.com with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | youtube.com            |
    When users in the same organization, which created the project want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | YoutubeId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: 51.la with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | 51.la                  |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | 51laId                 |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: About.me with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | About.me               |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | AboutmeId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Addthis.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Addthis.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | AddThisPubId           |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Addthis.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Addthis.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | AddThisUsername        |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Authorstream.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Authorstream.com       |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | AuthorstreamId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Bitbucket.org with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Bitbucket.org          |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | BitbucketcomId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Bitly.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Bitly.com              |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | BitlyId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Cheezburger.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Cheezburger.com        |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | BitlyCheezburgerId     |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Clicky.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Clicky.com             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | ClickyId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Colourlovers.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Colourlovers.com       |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | ColourloversId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Diigo.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Diigo.com              |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | DiigoyId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Disqus.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Disqus.com              |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | DisqusId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Engadget.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Engadget.com           |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | EngadgetId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Etsy.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Etsy.com               |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | EtsyId                 |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Facebook.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Facebook.com           |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FacebookId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"


  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Favstar.fm with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Favstar.fm             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FavstarId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Ffffound.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Ffffound.com           |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FfffoundId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Flavors.me with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Flavors.me             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FlavorsId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Flickr.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Flickr.com             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FlickrId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Foodspotting.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Foodspotting.com       |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FoodspottingId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Freesound.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Freesound.com          |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | FreesoundId            |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: GitHub.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | GitHub.com             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | GitHubId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: GitHub.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | GitHub.com             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | GithubId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: analytics.google.com/analytics/web with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | analytics.google.com   |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | GoogleAnalyticsTrackingId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: plus.google.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | plus.google.com        |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | GooglePlusId           |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: google.com/intl/es/tagmanager with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | google.com             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | GoogleTagManagerId     |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Hubpages.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Hubpages.com           |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | HubpagesId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Imgur.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Imgur.com              |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | ImgurId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Instagram.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Instagram.com          |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | InstagramId            |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: lithium.com/products/klout with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | lithium.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | KloutId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Lanyrd.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Lanyrd.com             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | LanyrdId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: last.fm/es with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | last.fm                |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | LastfmId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Librarything.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Librarything.com       |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | LibrarythingId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: LinkedIn.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Linkedin.com           |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | LinkedInId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: LinkedIn.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | LinkedIn.com           |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | LinkedinId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Marketingland.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Marketingland.com      |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | MarketinglandId        |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Mixpanel.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Mixpanel.com           |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | MixpanelId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Muckrack.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Muckrack.com           |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | MuckrackId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Myanimelist.net with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Myanimelist.net        |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | MyanimelistId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Myfitnesspal.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Myfitnesspal.com       |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | MyfitnesspalId         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: NewRelic.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | NewRelic.com           |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | NewRelicId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Optimizely.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Optimizely.com         |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | OptimizelyId           |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: us.pandora.net with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | us.pandora.net         |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PandoraId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Picasa.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Picasa.com             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PicasaId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Pinkbike.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Pinkbike.com           |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PinkbikeId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Pinterest.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Pinterest.com          |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PinterestId            |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Plancast.co.uk with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Plancast.co.uk         |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PlancastId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Plurk.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Plurk.com              |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PlurkId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Pornhub.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Pornhub.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | PornhubId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: raptor.martincarlisle.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | raptor.martincarlisle.com              |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | RaptorId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Readability.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Readability.com        |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | ReadabilityId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Reddit.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Reddit.com             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | RedditId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Redtube.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Redtube.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | RedtubeId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: es.slideshare.net with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | es.slideshare.net      |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SlideshareId           |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Smugmug.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Smugmug.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SmugmugId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: SmuleI.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | SmuleI.com             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SmuleIId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Soundcloud.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Soundcloud.com         |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SoundcloudId           |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Soup.io with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Soup.io                |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SoupId                 |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Speakerdeck.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Speakerdeck.com        |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SpeakerdeckId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Sporcle.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Sporcle.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SporcleId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Stackoverflow.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Stackoverflow.com      |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | StackoverflowId        |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Steamcommunity.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Steamcommunity.com     |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SteamcommunityId       |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Stumbleupon.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Stumbleupon.com        |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | StumbleuponId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Thesixtyone.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Thesixtyone.com        |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | ThesixtyoneId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: tribegroup.co with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | tribegroup.co          |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | TribeId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Tripit.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Tripit.com             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | TripitId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Tumblr.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Tumblr.com             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | TumblrId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Twitpic.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Twitpic.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | TwitpicId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Twitter.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Twitter.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | TwitterId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Untappd.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Untappd.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | UntappdId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Ustream.tv with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Ustream.tv             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | UstreamId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Wattpad.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Wattpad.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | WattpadId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Wefollow.co with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Wefollow.co            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | WefollowId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: whos.amung.us with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | whos.amung.us          |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | WhosAmungUsId          |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: WordPress.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | WordPress.com          |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | WordPressId            |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"


  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: WordPress.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | WordPress.com          |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | WordPress              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"


  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Support.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Support.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SupportId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Xanga.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Xanga.com              |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | XangaId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Xfire.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Xfire.com              |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | XfireId                |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Social.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Social.com             |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | SocialId               |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Xhamster.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Xhamster.com           |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | XhamsterId             |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: Xvideos.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | Xvideos.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | XvideosId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: metrica.yandex.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | metrica.yandex.com     |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | YandexMetricaCounterId |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: youtube.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | youtube.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | YouTubeChannel         |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: youtube.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | youtube.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | YouTubeId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"

  @GetUserTrakers
  Scenario: Check the response of Get User Trakers: youtube.com with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | youtube.com            |
    When user not in the same organization want Get User Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | type        | YoutubeId              |
    Then the api should response with code 200
    And Check JSON schema "trackers/getUserTrakers.json"