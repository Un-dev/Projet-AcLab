# Projet-AcLab


  The concept of the app would be to offer a solution to people who want to watch movies together but can't agree on the movie.
  Similarly to Tinder, people would swipe through a list of films and when a match would occur they'd be notified.
  The list of film can be based on any film available on any streaming platform (ex : Netflix, Disney+, Amazon Prime...), filtered (type of film, duration, minimum note on review site) or not.
  Of course the implementation of Streaming-platform-linked features will require the use of external APIs or an open movie DB.
  
## How does the app work ? 

If we suppose that everyone of the group has the app installed on their mobile phone. One of them would first create a room and give the code to the others so they may join the room. Then, they shall proceed to choose which platform they would want to see the film on (Eg : Disney+, Netflix or even a film that is not on these platform) (*N.B: Multiple platforms/services can be chosen*). Then, if they want to, they can filter with a vote which categories of movie they would like to see in priority (Eg: Action, Humor, SF..). 
Once the filtering done they would be able to launch the process which means that the app will propose to everyone a set of movies based on filters and platforms selected then they would be able to swipe (left or right) if they want to see it or not. 
If there's a match which means everyone wants to see the film, the process stop and the app would show the movie detail and the platform they can see the film on.
If there's not a match the process would continue.


## Prerequisites

## Technologies

### What are we using ?

* [Spring-Boot](https://spring.io/projects/spring-boot) for the backend API
* [Flutter](https://flutter.dev/) for the frontend
* [MongoDB](https://www.mongodb.com) for the data base
* [Docker](https://www.docker.com) for the DevOps
* [AndroidStudio](https://developer.android.com/studio) for the emulation

### Why these choices ? 

#### Flutter

We've chosen Flutter as our frontend framework because it's designed for fast development and comes with some customizable widgets and the possibilty to use hot reload. Finaly the most important feature with Flutter is Hybrid development, meaning it allows to develop both for ios and Android 

#### Spring Boot

Spring boot is a Java framework, as we already all know a little bit of Java, plus we have a course about at the University, using it in this project is a great opportunity to train our skills on this framework. Also there are lots of libraries that could be useful.
Furthermore, Java is statically-typed (type-safety) and has a good support for multi-threading. The framework also promote a long-term support and maintabillity.

#### MongoDB
MongoDB is an open-source document database built on a scale-out architecture.
We chose MongoDB as the database for this project because it has a worldwide community of developers and consultants, so it is easy to get help, its document data model is a powerful way to store and retrieve data that allows developers to move forward quickly.
The technology is stable and durable, with a lifespan of over 10 years, and is frequently updated, such as version 4.2.0 released in August 2019.
Although it is licensed under SSPL for the servers and tools, and under Apache for the drivers, it is free to use.
It also depends on NoSQL, but it is not difficult to understand if we have some knowledge of SQL. Moreover, MongoDB supports hybrid and multi-cloud applications.

#### Docker

#### AndroidStudio

## Running the app

## Others

### Authors

* [@Galimede](https://github.com/Galimede) (Mathieu Degand) 
* [@Un-dev](https://github.com/Un-dev) (François Lannoy)
* [@Verzelea](https://github.com/Verzelea) (Arthur Verzele)
* [@Skiadram](https://github.com/Skiadram) (Neel Coffin)
* [@sipe-daniel](https://github.com/sipe-daniel) (Daniel Sipe)
* [@KheliaNibaruta](https://github.com/KheliaNibaruta) (Khelia Niburata)

### Journal

[Project's Journal](https://github.com/Un-dev/Projet-AcLab/tree/main/Journal)

