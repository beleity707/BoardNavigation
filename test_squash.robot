*** Settings ***
Library    SquashLibrary    http://squash-tm-api-url    YOUR_API_TOKEN

*** Variables ***
${PROJECT_ID}    12345
${TEST_CASE_ID}  67890

*** Test Cases ***
Fetch Test Cases
    [Documentation]    Fetches all test cases from the Squash TM project
    ${test_cases}=    Get Test Cases    ${PROJECT_ID}
    Log    ${test_cases}

Trigger Test Execution
    [Documentation]    Triggers a test case execution in Squash TM
    ${execution}=    Trigger Test Execution    ${PROJECT_ID}    ${TEST_CASE_ID}
    Log    ${execution}

Get Execution Results
    [Documentation]    Fetches results for the executed test case
    ${execution_id}=    Set Variable    ${execution['id']}
    ${results}=    Get Execution Results    ${execution_id}
    Log    ${results}
