Feature: Reproduce 'JSON text must at least contain two octets!' issue in sample project
  As a developer
  I want to reproduce UIAutomation typeString issue in sample project

  See: https://groups.google.com/forum/#!topic/calabash-ios/EjBqwxmuy-w

  Scenario Outline: Reproduce "A JSON text must at least contain two octets! (JSON::ParserError)" issue
    Given regional format is set to <aLocale>
      And First view is opened
    When I type text <aText> to text field
      And I clear text field
      And I type text <aText> to text field

    Examples:
    | aLocale | aText           |
    | en_US   | abcdefghijklmn  |
    | en_GB   | 1234567890      |
    | fi_FI   | a1b2c3d4e5f6g7h |
