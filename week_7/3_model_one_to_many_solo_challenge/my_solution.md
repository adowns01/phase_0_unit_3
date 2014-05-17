# U3.W7: Modeling a Real-World Database (SOLO CHALLENGE)

## Release 0: Users Fields
<!-- Identify the fields Twitter collects data for -->
the user fields are: name, location, website, bio

## Release 1: Tweet Fields
<!-- Identify the fields Twitter uses to represent/display a tweet. What are you required or allowed to enter? -->
fields: text (up to 140 characters), photo (optional), location(optional), date/time (automatic) 

## Release 2: Explain the relationship
The relationship between `users` and `tweets` is: one-to-many
<!-- because... -->
It is one to many because *one* person can send *many* tweets, but each tweet is only sent by *one* person.

## Release 3: Schema Design
<!-- Include your image (inline) of your schema -->
https://github.com/adowns01/phase_0_unit_3/blob/master/week_7/imgs/new_twitter_schema.png

## Release 4: SQL Statements
<!-- Include your SQL Statements. How can you make markdown files show blocks of code? -->
all the tweets for a certain user id


SELECT tweets.text FROM twitter_users 


INNER JOIN tweets

ON twitter_users.twitter_handle = tweets.twitter_handle

WHERE id = 555





the tweets for a certain user id that were made after last Wednesday (whenever last Wednesday was for you)


SELECT tweets.text FROM twitter_users 

INNER JOIN tweets

ON twitter_users.twitter_handle = tweets.twitter_handle

WHERE id = 555 AND created_at > #05/14/14# 



all the tweets associated with a given user's twitter handle

SELECT * FROM tweets
WHERE twitter_handle = ‘@me’


the twitter handle associated with a given tweet id

SELECT twitter_handle FROM tweets
WHERE id = 555

## Release 5: Reflection
<!-- Be sure to add your reflection here!!! -->
