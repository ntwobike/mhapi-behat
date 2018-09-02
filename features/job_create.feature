Feature: Resource: Job, Type: Create
  Scenario: Should get Response as 400 when empty payload is passed
    Given the request body is:
    """
    {
    }
    """

    When I request "/api/jobs" using HTTP POST
    Then the response code is 400

  Scenario: Should be able to create a Job with correct payload
    Given the request body is:
    """
    {
      "title": "First title",
      "description": "make earth green",
      "zipcode": "21521",
      "category_id": 804040,
      "due_date": "2030-12-05T01:02:03+00:00"
    }
    """

    When I request "/api/jobs" using HTTP POST
    Then the response code is 201

  Scenario: Should get Response as 400 when title is empty
    Given the request body is:
    """
    {
      "title": "",
      "description": "make earth green",
      "zipcode": "21521",
      "category_id": 804040,
      "due_date": "2030-12-05T01:02:03+00:00"
    }
    """

    When I request "/api/jobs" using HTTP POST
    Then the response code is 400

  Scenario: Should get Response as 400 when description is empty
    Given the request body is:
    """
    {
      "title": "Valid title",
      "description": "",
      "zipcode": "21521",
      "category_id": 804040,
      "due_date": "2030-12-05T01:02:03+00:00"
    }
    """

    When I request "/api/jobs" using HTTP POST
    Then the response code is 400

  Scenario: Should get Response as 400 when zipcode is empty
    Given the request body is:
    """
    {
      "title": "Valid title",
      "description": "make earth green",
      "zipcode": "",
      "category_id": 804040,
      "due_date": "2030-12-05T01:02:03+00:00"
    }
    """

    When I request "/api/jobs" using HTTP POST
    Then the response code is 400

  Scenario: Should get Response as 400 when zipcode is invalid
    Given the request body is:
    """
    {
      "title": "Valid title",
      "description": "make earth green",
      "zipcode": "1111111",
      "category_id": 804040,
      "due_date": "2030-12-05T01:02:03+00:00"
    }
    """

    When I request "/api/jobs" using HTTP POST
    Then the response code is 400

  Scenario: Should get Response as 400 when category_id is empty
    Given the request body is:
    """
    {
      "title": "Valid title",
      "description": "make earth green",
      "zipcode": "21521",
      "category_id": "",
      "due_date": "2030-12-05T01:02:03+00:00"
    }
    """

    When I request "/api/jobs" using HTTP POST
    Then the response code is 400

  Scenario: Should get Response as 400 when category_id is invalid
    Given the request body is:
    """
    {
      "title": "Valid title",
      "description": "make earth green",
      "zipcode": "21521",
      "category_id": 11111111,
      "due_date": "2030-12-05T01:02:03+00:00"
    }
    """

    When I request "/api/jobs" using HTTP POST
    Then the response code is 400

  Scenario: Should get Response as 400 when due date is empty
    Given the request body is:
    """
    {
      "title": "Valid title",
      "description": "make earth green",
      "zipcode": "21521",
      "category_id": 804040,
      "due_date": ""
    }
    """

    When I request "/api/jobs" using HTTP POST
    Then the response code is 400