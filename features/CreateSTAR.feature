Feature:  As a user, I can create a note, so that I can practice the STAR method

Scenario:  As a user, I can create a complete note
When I create a note
Then it is saved

Scenario:  As a user, I can create a partial note
When I create a note
But I don't fill in all the pages
Then it is saved for editing later

Scenario:  As a user, I can finish a incomplete note
