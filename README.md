Homework 2 - *JChat*

**JChat** is a Ruby on Rails blog application that allows users to send messages to each other that can only be read once.

Submitted by: **HuyPhung**

Time spent: **60** hours

URL: **https://jchatcs.herokuapp.com/**

## User Stories

The following **required** functionality is complete:


* [x] User can sign up by providing their email, password, and name. 
* [x] User can login using an email and password. 
* [x] After logging in, the user is taken to a page that has a list of incoming messages, sorted in descending chronological order (newest messages at top), a "new message" link, an "add friends" link, and a "sent messages" link.
* [x] Unread messages should be **bold** or something similar in the list of messages. 
* [x] Clicking the "add friends" link takes the user to a page with all users listed, with a link to "add user to friends list". 
* [x] Clicking on "new message" takes the user to a page where they can write a new mesasge. The recipient field should be a dropdown, where the options are names from the user's friends.
* [x] Clicking on "sent messages" takes the user to a page listing messages they have sent. Each message should display at what time it was read by the recipient, or "unread". The user cannot read the contents of the messages.
* [x] User can read a message's content only once. Once the message has been read, the user will see a page indicating the message has already been read.
* [x] User can only read messages where they are the recipient.

The following **optional** functionality is complete:

* [x] User can attach an image.
* [ ] User can have multiple recipients on one message. 
* [x] User can log in with Facebook. 
* [ ] User A can "block" User B. If User A blocks User B, they will not see messages from User B. User B will not know they have been blocked.
* [x] User can remove friends from their friends list.
* [ ] User can unblock friends from their block list.
* [ ] Implement Infinite Scroll. Hint: you can use the [kaminari gem](https://github.com/amatsuda/kaminari) and [jquery-infinite-pages gem](https://github.com/magoosh/jquery-infinite-pages).
* [ ] User gets an email when they receive a message, with a link to view the message.
* [ ] User gets an email when a message they have sent is read with the time at which the message was read.
* [ ] User can send a message to the email address of a non-registered user. The recipient will receive an email with a link to sign up for the service, and after creating an account, will be able to view the sent message. 

The following **additional** features are implemented:

* [x] Side menu show how many unread messages
* [x] User need to send the friend request before become friend.
* [x] Users can cancel the friend request before the others accept their friend requests.
* [x] Users can Accept or Decline a friend request by the others.
* [x] User can send message easily by click on a button next to a friend in friendlist, the email field will
      be filled automatically.
* [x] Side menu show how many friend request, how many friends in friendlist.
* [x] User can check sent message if it is read or not, its recipient and subject but cannot see the body

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

[Video Walkthrough](http://i.imgur.com/rEptbcJ.gif)

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Describe any challenges encountered while building the app.
* I use semantic this time because I think it look nice. I spend many hours to understand it.
* The friendship functions take me a lot of hours but I understand it clearly now.
* I make the UI simple but still beautiful and friendly with the users.

## License

    Copyright 2017 HuyPhung

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
