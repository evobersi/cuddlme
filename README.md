<<<<<<< HEAD
  *** Cuddl'r *** 
  
  What problem are you trying to solve?
  
  Cuddl'r allows (pure bred) dog owners to set up play dates and meet prospective breeding mates for their dogs in parks around New York City. 

  What will your app do / what features will it have?
  
  * a dog database with their pertinent information
  * a members only section to set up dates and view profiles
  * a search option to find dogs by breed, age range, spayed/neutered (yes/no) and by zip code
  * the options to send, accept and/or deny a play date request
  

  What do you think you can reasonably implement in 1 week?
  * create seed files for dogs with their name, breed, age range, sex, spayed/neutered boolean, zip code
  * create a CRUD app with models for dogs, dates and locations and their associations
    - class Dog has_many :dates
    - class Dates belongs_to :dog
    - class Location has_many :dogs
  * create a members only section where users can communicate, search other members, view profiles and request a date.
  * use Google Maps API to locate the dog parks on a map.
  * use NY Open Data .XML file to list all of the dog parks.
  * "prettify" with visuals, HTML and CSS 

  What APIs or other resources might you use / do you plan on using?

  * Google Maps API
  *Directory of Dog Runs and Off-Leash Areas
  Dog runs in New York City Department of Parks & Recreation properties and properties with off-leash hours for dogs.
  http://www.nycgovparks.org/bigapps/DPR_DogRuns_001.xml
  * 

  ---- 

  Object Models:

  https://www.gliffy.com/go/html5/5004337?app=1b5094b0-6042-11e2-bcfd-0800200c9a66

  ----

  User Stories:

  As a Creator, I want users to interact with eachother online so they can meet in person.
  As a Creator, I would like to bring pure bred dog owners together to so that they can breed. 
  As a User, I want an easy and fun way to search for and contact dog owners so I don't have to find them myself. 
  As a User, I want to search by keyword for dogs that are relevant to me so that I can save time searching through the database. 
  As a User, I would like to see which five parks are closest to my zipcode so that I can plan a date.

  
  ----

  Resources:
  * Google Maps API
  * http://www.nycgovparks.org/bigapps/DPR_DogRuns_001.xml


  Wireframe:

  https://wireframe.cc/HW6GvC



=======
cuddlme
=======

Project 1 
>>>>>>> 4b066d72bd2ca069382a70fdeb406c3456d18cdd
