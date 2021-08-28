INITIAL BRANCH OWNED BY APPBREWERY, This fork is my modified rendition of the intended format/design pattern and functionality. 

#  Destini

You as the user will read a story and will make one of two choices that will progress the story onto subsequent progressions displayed via text. You will be required to make additional choices between two decisions until the story ends.


## Purpose

This fork was created according to the guidance of Appbrewery's iOS13 & Swift - The Complete iOS App Development Bootcamp's Section 10: iOS APP Design Pattern Challenge. 

The intent here was to construct the functionality of an app that guides users on a story based on one of two choices presented to them via the UI. Either choice would present a new body of text presenting the progression of the story based on their choice within the greater encompassing UI element on the screen. The user will then continue to decide between one of two choices until the story ends. Once the story ends, the UI will cycle back to the beginning of the story thus allowing users to experiement with different choices if they wish.

## What I Learned
 - a recap on the purpose and utility behind a Model-View-Control design pattern*
 - using struct's for their properties and methods for the purpose of being initialized so that instances of them can be used for the use-case of a program
 - the concept of a 'Brain' i.e. StoryBrain.swift - a struct that handles the unqiue instances of an underlying struct with it's own properties and methods
 - Using Github and Git to intently fork an established repo onto my own account. This was my first time attempting so and required a inquisitive process to get it done using console commands git remote ...


* In my own words, MVC allows for 3 different components of a system/program to be responsible for data, how input and outout is both recieved and presented back to an end-user and how input is processed between the two other components (Model and View) in one respective componenet - the Controller
