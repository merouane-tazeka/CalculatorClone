# Table of Contents

* I.    General info
* II.   Technologies
* III.  Setup
* IV.   Architecture

## I. General info

This project is a simple clone of the calculator application of iPhone. For now, the application does only handle simple operations.

## II. Technologies

Project is created using:

* Swift 5

## III. Setup

You will need a Mac running Xcode to run this application on your device or your simulator.

* Download the project files to your computer.
* Run the "Todoz.xcworkspace" file.

## IV. Architecture

## Design Pattern

*  Model-View-Controller (MVC)

### IV.I Data Model

Creation of a Struct containing two functions:
* The first contains all the operations that the user can use.
* The second calculates the numbers entered by the user with the chosen operation.

### IV.II Views

The whole view has been created using only the Main.storyboard file, using Auto Layout. The view contains:
* A Label that shows the number entered by the user and the obtained result.
* Stack Views containing all the buttons (numbers and operations).

### IV.III Controller

The controller fulfills the following tasks:
* Display the number entered by the user and the obtained result on the Label.
* Create the separation of the two numbers that the user wants to operate with when he does press an operation button.
