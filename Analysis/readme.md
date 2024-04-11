# Analysis

This directory is for all the analysis artefacts.<br>
The analysis is to analyse and write down the functional requirements of the different business cases and model them in a consistent set of diagrams.

## Artefacts

- [User Stories](#User-Stories)
- [Data Dictionary](#Data-Dictionary)
- [Domain Model](#Domain-Model)
- [Use Case Diagram](#Use-Case-Diagram)
- [Use Case Descriptions](#Use-Case-Descriptions)
- [Test Scenarios](#Test-Scenarios)
- [Activity Diagrams](#Activity-Diagrams)

## User Stories
<a name='User-Stories'/>

[User stories](UserStories.md) answer the questions who is going to use the application, what they want to do on the application and why they want to do that. The users are ordered in user groups which have different aspirations for using the application.
The user groups are

### Sales officer:

As a sales officer, I want to be able to register upcoming flights so that I can start the sales process for them.

As a sales officer, I want to be able to start the sales process for registered flights, so I can start selling the ticktes.

As a sales officer, I want to be able to enable temporary price reductions so that I can attract more customers.

As a sales officer, I want to be able to set static discounts (e.g. 10% price reduction) for a limited period of time, to keep the customer attention high due to discounts.

As a sales officer, I want to be able to set dynamic discounts based on the number of sun hours at the destination, which will be retrieved from an external API.

As a sales officer, I want to be able to cancel flights in case they get revoked. 

As a sales officer, I want to be able to enter passenger info in order to create a booking.

As a sales officer, I want to be able to add new airports to the system so that passengers can travel there. 

As a sales officer, I want to be able to add new planes to the system so that later they can be used in various flights.

As a sales officer, I want to be able to ebter information about a new flight so that the registering of a flight is complete.

### Sales employee:

As a sales employee, I want to be able to look up available flights so that I can create bookings for one or more persons for a specific flight.

As a sales employee, I want to be able to select (paid) options for extra legroom, food, luggage and seats for each booking.

As a sales employee, I want to be able to see the prices calculated by the software based on the chosen options, class, availability of seats, applicable discounts and the number of days left before the flight departs.

As a sales employee, I want to be able to handle concurrent users potentially trying to book limited seats for the same flight, so he can increase the price of the limited seats.

### Sales manager:

As a sales manager, I want to be able to view a management dashboard so that I can see important key performance indicators.

As a sales manager, I want to be able to view total revenue numbers for each route.

As a sales manager, I want to be able to view the number of tickets sold in each class.

As a sales manager, I want to be able to view statistics on all options sold.

As a sales manager, I want to be able to create accounts for sales employees.

As a sales manager, I want to be able to see the passenger total revenue (PLV - Passenger Lifetime Value) so I know how much they spent with the company.

As a sales officer, I want to be able to register upcoming flights so that I can start the sales process for them.

As a sales officer, I want to be able to start the sales process for registered flights, so I can start selling the ticktes.

As a sales officer, I want to be able to enable temporary price reductions so that I can attract more customers.

As a sales officer, I want to be able to set static discounts (e.g. 10% price reduction) for a limited period of time, to keep the customer attention high due to discounts.

As a sales officer, I want to be able to set dynamic discounts based on the number of sun hours at the destination, which will be retrieved from an external API.

As a sales employee, I want to be able to look up available flights so that I can create bookings for one or more persons for a specific flight.

As a sales employee, I want to be able to select (paid) options for extra legroom, food, luggage and seats for each booking.

As a sales employee, I want to be able to see the prices calculated by the software based on the chosen options, class, availability of seats, applicable discounts and the number of days left before the flight departs.

As a sales employee, I want to be able to handle concurrent users potentially trying to book limited seats for the same flight, so he can increase the price of the limited seats.

## Data Dictionary
<a name='Data-Dictionary'/>

The [data dictionary](DataDictionary.md) provides an overview of all included important data neccessary for the business processes with a detailed description of how the data is used in the application.

| Command | Description |
| --- | --- |
| Airport| An airport is a location where planes depart and arrive. Every airport is located in a city and belongs to a country. Every airport also has an [IATA Code](https://en.wikipedia.org/wiki/International_Air_Transport_Association) (e.g. DUS for Düsseldorf).|
| Booking | A booking represents the arrangement that you make to reserve a flight ticket in advance. This can be made by a staff member. |
| Customer| The company for which we are building the application.|
| Extras| Planes can provide different options (e.g. More legroom, More luggage, Food)|
| Flight |  The action of flying from one airport to another. A Flight has a Flight ID, Departure time, Number of Tickets, Arrival time, Departure place, Arrival place. Each flight must be assigned to two Airports (departure and arrival). |
| Management dashboard| Presents the key performance indicators.|
| Passenger | Someone that flies from one place to another through our application. A passenger has a name, email and customer ID. |
| Plane| A plane is a transport that flies passengers from the departure place to arrival place. Plane has a unique ID, model, and number of seats.|
| Route| A way or course taken in getting from a starting point to a destination. Consists of one or more flights.|
| Sales employee | A person that can look up available flights and create bookings for those flights and can add (paid) options to the booking. A sales employee has a name, email and employee ID.|
| Sales manager| A person that manages the company. A sales manager can see important KPIs. A sales manager has a name, email and employee ID. A sales manager can also create bookings.|
| Sales officer | A person that registers upcoming flights and starts the sales process for them. They can also enable temporary discounts and create bookings. A sales officer has a name, email and employee ID. |
| Ticket | An information that lets a person on a specific flight. A Ticket has a Ticket ID, Name of the person flying, Departure time, Gate number, The place it is flying from and where to, Flight ID, Price |


## Domain Model
<a name='Domain-Model'/>

The domain model provides an overview of the relations between the different entities in the business processes. Unlike a class diagram, a domain model does not include all variables neccessary for the application to work.

![Domain model Create Booking](https://github.com/SungSoo-Ri/PRJ2-Retake/blob/main/images/DomainModel.png)

## Use Case Diagram
<a name='Use-Case-Diagram'/>

The use case diagram gives an overview of all business processes with their accocciated user groups.

![SalesTeam](https://github.com/FontysVenlo/prj2-2023-prj2-2023-13/assets/117170300/ff655cd5-14c2-431d-8983-2c7b6a1e0f26)

## Use Case Descriptions
<a name='Use-Case-Descriptions'/>

[Use case descriptions](UseCases.md) provide an overview  of all business processes in the application including the actor user groups, the expected result, a step-by-step overview of the process and optional possibe exceptions. The graphical equivalent is the use case diagram.

## Table of contents use cases
- [Create booking](#1)
- [Look up the flight](#2)
- [Register a flight](#3)
- [Add extras to booking](#16)
- [Enter passenger info](#4)
- [Enable price reductions](#5)
- [Set static discount](#6)
- [Set dynamic discount for a specific flight](#7)
- [Set dynamic discount for a location](#17)
- [View management board](#8)
- [Create employee accounts](#9)
- [Start the sales process](#10)
- [Enter information about the flight](#11)
- [Cancel flight](#12)
- [Add an Airport](#13)
- [Add a plane](#14)
- [Calculating prices](#15)

### Sales employee

<a name="1"></a>
| Info | Description |
| --- | --- |
| Name: | Create booking |
| Actor: | Sales Employee |
| Description: | Sales employee wants to create a booking for a passenger. |
| Pre-condition: | Sales employee needs to be logged in |
| Scenario: | 1. [Look up the flight](#2) <br> 2. [Enter passenger info](#4). <br> 3. [Add extras to booking](#16) <br> 4. System processes the information.<br> 5. System [calculates the price](#15). <br> 6. System creates booking. <br> 7. System generates ticket.
| Result: | A booking was created for a passenger. |
| Exceptions: | 2. No available flights for the date, origin and destination provided <br>  2.1. Use case ends here. |

| Info | Description |
| --- | --- |
| Name: | Create booking |
| Actor: | Sales Employee |
| Description: | Sales employee wants to create a booking for a passenger. |
| Pre-condition: | Sales employee needs to be logged in |
| Scenario: | 1. [Enter passenger info](#4). <br> 2. Actor enters flight id. <br> 3. [Add extras to booking](#16) <br> 4. System processes the information.<br> 5. System [calculates the price](#15). <br> 6. System creates booking. <br> 7. System generates ticket.
| Result: | A booking was created for a passenger. |
| Exceptions: | 2. Flight id invalid. <br>  2.1. Use case goes back to first step. |

<a name="4"></a>
| Info | Description |
| --- | --- |
| Name: | Enter passenger info |
| Actor: | Sales Employee |
| Description: | Sales employee wants to enter passenger info in order to create the booking |
| Pre-condition: | Actor creates a booking for a passenger |
| Scenario: | 1. System displays information form (First name, Last name, E-mail, Phone number, Date of birth, Nationality, Document number). <br> 2. Actor fills in the information of the passenger. |
| Result: | Passenger info was entered |
| Exceptions: | 2. Invalid input <br> 2.1 Use case goes back to step 1. |

<a name="2"></a>
| Info | Description |
| --- | --- |
| Name: | Look up available flight |
| Actor: | Sales employee |
| Description: | Search for available flights |
| Pre-condition: | Actor wants to search a flight based on certain criteria |
| Scenarios: | 1. System provides the options for searching for flights. <br> 2. Actor fills in the form (Departure, arrival, date) <br> 3. System begins the search. <br> 4. System displays found flights. <br> 5. Actor selects a flight |
| Result: | The flights meeting the search criteria are displayed to the sales employee |
| Exceptions: | 4. No flights found. <br> 4.1. Use case ends here. <br> 5. Actor doesn't select a flight. <br> 5.1. Use case ends here. |

<a name="16"></a>
| Info | Description |
| --- | --- |
| Name: | Add extras to booking |
| Actor: | Sales Employee |
| Description: | Add extras when creating a booking. |
| Pre-condition: | Flight ID needs to be entered or selected. |
| Scenario: | 1. System searches available extras for the plane assigned to the flight. <br> 2. System displays a checkbox for each available extra. <br> 3. Actor selects desired extras. <br> 4. Actor confirms the selection by clicking on "Create booking" |
| Result: | Passenger info was entered |
| Exceptions: | 2. No extras available <br> 2.1 Use case ends here. <br> 3. Actor doesn't select any extras. <br> 3.1. Use case ends here. |

<a name="15"></a>
| Info | Description |
| --- | --- |
| Name: | Calculate price |
| Actor: | Sales employee |
| Description: | System calculates the price for a flight on sales employee's demand |
| Pre-condiiton: | Sales employee is logged in and is in the process of creating a booking |
| Scenario: | 1. System looks up the arrival and departure airport of the flight and calculates prices based on the distance between them. <br> 2. System looks up the selected extras for the booking and adds various costs to the price depending on which extras are selected. <br> 3. System adds everything up and returns the final price of the booking. |
| Result: | The final booking price is returned by the system |

### Sales officer

<a name="14"></a>
| Info | Description |
| --- | --- |
| Name: | Add a plane |
| Actor: | Sales officer |
| Description: | Sales officer is able to add new plane later to be used in flights |
| Pre-condition | Sales officer is logged in |
| Scenarios: | 1. Actor selects option to add new plane from the main menu. <br> 2. System prompts actor asking for plane details: number of seats and model. <br> 3. Actor fills in all required fields and confirms it. <br> 3. System checks if the input is correct and saves the newly added plane. |
| Result: | A new plane is added to the system, and can be used in the future flights. |
| Exceptions: | 3. System shows error message if new plane's data that actor inputted is incorrect and does not save it. <br> 3.1 Use case ends here. |

<a name="3"></a>
| Info | Description |
| --- | --- |
| Name: | Register a flight |
| Actor: | Sales officer |
| Description: | A Sales Officer is able to register a flight. |
| Pre-condition: | |
| Scenarios: | 1. Actor chooses the option “Register a flight". <br> 2. System shows a formula, which asks for a departure and arrival airport, departure date and arrival date, departure time and arrival time, departure time zone and arrival time zone and gate number. <br> 3. Actor selects airports, picks dates, time and time zones and fill in the gate number. <br> 4.Actor selects plane model and system shows the number of seats for that model. <br>5. Actor fills in the price and selects currency. <br> 6. System registers the flight.|
| Result: | A flight is now registered and can be made available for sales. |
| Exceptions: | 2.1 System couldn’t register the flight beacuase departure time is after arrival time. |

<a name="5"></a>
| Info | Description |
| --- | --- |
| Name: | Enable temporary price reductions |
| Actor: | Sales Officer |
| Description: | Sales Officer enables temporary price reduction to a certain flight. |
| Pre-condition: | Sales officer has to be logged in, flight has to be registered and the sales process needs to be started. |
| Scenario: | 1. Actor needs to register upcoming flight. <br> 2. System will start the sales for registered flights. <br> 3. Actor can then enable temporary price reduction for selected flights. <br> 4. System then shows two options which are static and dynamic discounts. |
| Result: | The flight tickets are cheaper which means more tickets could be sold. |
| Exceptions: | 4. There are no price reductions for the selected flights. |

<a name="10"></a>
| Info | Description |
| --- | --- |
| Name: | Start the sales process |
| Actor: | Sales officer |
| Description: | A sales officer is able to start the sales process of a flight. |
| Pre-condition: | The flight must be registered, the Sales Officer must be logged in. |
| Scenarios: | 1. Actor needs to register the flight. <br> 2. System then has the flight online. <br> 3. Actor has to start the sales process for registered flights. <br> 4. System displays that you can buy tickets. <br> 5. Actor then can sell the tickets. |
| Result: | The sales process for the flight has started. |
| Exceptions: | 2. The flight was in the past which means the tickets can’t be sold anymore. |

<a name="6"></a>
| Info | Description |
| --- | --- |
| Name: | Set static discount |
| Actor: | Sales officer |
| Description: | Sales Officer sets a static discount to a certain flight. |
| Pre-condition: | Sales manager has to be logged in, the corresponding flight must be registered and sales process has to be started |
| Scenarios: | 1. Actor inputs the information about the flight that he wants to apply the discount to - date and time, arrival airport, departure airport. <br> 2. System searches for the flights that meet the criteria. <br> 3. System shows the flights. <br> 4. Actor selects one of the flights. <br> 5. System provides options about the flight. <br> 6. Actor chooses an option that applies a static discount to the flight. <br> 7. System prompts the actor asking about the discount size (in percentage). <br> 8. Actor inputs the desired discount size and confirms it. <br> 9. System applies the discount to the flight. |
| Result: | The static discount is applied to the flight, thus the price is reduced according to the size of discount |
| Exceptions: | 2. System shows the message telling that there are no flights meeting the criteria if this is the case. |

<a name="12"></a>
| Info | Description |
| --- | --- |
| Name: | Cancel flight |
| Actor: | Sales officer |
| Description: | Sales Officer is able to cancel a flight. |
| Pre-condition: | Sales manager has to be logged in, the corresponding flight must be registered. |
| Scenarios: | 1. Actor inputs the information about the flight that he wants to cancel- date and time, arrival airport, departure airport. <br> 2. System searches for the flight that meets the criteria. <br> 3. System shows the flights. <br> 4. Actor selects the flights and is able to cancel it. <br> 5. System deletes the flight from the system. |
| Result: | The flight has been removed from the system. |
| Exceptions: | 2. System shows the message telling that there are no flights meeting the criteria if this is the case. |

<a name="7"></a>
| Info | Description |
| --- | --- |
| Name: | Set dynamic discount for a specific flight |
| Actor: | Sales Officer |
| Description: | Sales Officer can apply dynamic discount for a certain flight |
| Pre-condition: | Sales officer has to be logged in, the corresponding flight must be registered and sales process has to be started |
| Scenario: | 1. Actor presses button on the main menu that switches to discount page. <br> 2. System takes actor to discounts page.<br> 3. Actor inputs the information about the flight that he wants to apply the discount to - date and time, arrival airport, departure airport. <br> 4. System displays the flights that meet the search criteria. <br> 5. Actor selects the desired flight. <br> 6. System shows information about selected flight: departure airport, arrival airport, date. <br> 7. Actor presses the button that applies a dynamic discount for the flight. <br> 8. System retrieves sun hour data from the external API.<br> 9. System calculates the discount based on the amount of sun hours at the arrival place and applies it to the flight. |
| Result: | Dynamic discount is applied to the corresponding flight. |
| Exceptions: | 2. System shows the message telling that there are no flights meeting the search criteria if this is the case. <br> 2.1 Use case ends here. <br> 9. System displays an error message telling that discount has already been applied to selected flight. <br> 9.1 Use case ends here. |

<a name="17"></a>
| Info | Description |
| --- | --- |
| Name: | Set dynamic discount to a location |
| Actor | Sales Officer |
| Description: | Sales Officer is able to apply dynamic discount to all flights with same arrival airport |
| Pre-condition: | Saels officer has to be logged in, at least one flight has to be registered |
| Scenario: | 1. Actor presses button on the main menu that switches to discount page. <br> 2. System takes actor to discount page. <br> 3. Actor inputs desired location's name. <br> 4. System displays locations that meet the criteria. <br> 5. Actor selects desired location. <br> 6. System shows selected location's name. <br> 7. Actor presses button that applies dynamic discount to all flights with selected location as arrival airport. <br> 8. System retrieves sun hour data from external API. <br> 9. System calculates the price (based on sun hours) of all flights affected by the discount and applies it. |
| Result: | Dynamic discount is applied to all flights with certain location. |
| Exception: | 2. System shows the message that there are no flights meeting the criteria if this is the case. <br> 2.1 Use case ends here. <br> 9. System displays error message telling that there are no flights to this location without a discount. <br> 9.1 Use case ends here. |

<a name="11"></a>
| Info | Description |
| --- | --- |
| Name: | Entering information about the new flight |
| Actor: | Sales officer |
| Description: | Sales officer can enter information about the flight |
| Pre-condition: | Sales officer has to be logged in |
| Scenario: | 1. Actor selects option to add new flight from the main menu. <br> 2. System prompts actor asking for flight information: date, time, plane, departure airport and arrival airport. <br> 3. Actor fills in the all fields. <br> 4. System processes the information. |
| Result: | All data for the flight was successfully received |
| Exceptions: | 4. System displays the error message telling that something went wrong if the data actor gave was incorrect |

<a name="13"></a>
| Info | Description |
| --- | --- |
| Name: | Add an Airport |
| Actor: | Sales officer |
| Description: | The Sales officer can add an airport to the database. |
| Pre-condition: | Sales officer must be logged in. |
| Scenario: | 1. Actor clicks on "Add airport" button. <br> 2. System displays form(Country, City, IATA code) <br> 3. Actor fills out the form <br> 4. Actor presses the confirm button. <br> 5. System processes the information and adds the airport to the database. |
| Result: | The airport is now registered and flights from and to the airport are now possible. |

### Sales Manager

<a name="8"></a>
| Info | Description |
| --- | --- |
| Name: | View management dashboard |
| Actor: | Sales manager |
| Description: | Sales Manager checks the management dashboard in order to see the important key performance indicators |
| Pre-condition: | Sales managers is logged in to the app |
| Scenarios: | 1. Actor open the management dashboard. <br> 2. System shows all the flights performed. <br> 3. Actor select a flight. <br> 4. System shows the important key performance indicators for that flight. <br> 5. Actor indicates which information he wants to know. <br> 6. System lists all the information that it stored in the database. |
| Result: | Sales Manager view the important key performance indicators for a specific flight |

<a name="9"></a>
| Info | Description |
| --- | --- |
| Name: | Creating accounts for sales employee |
| Actor: | Sales Manager |
| Description: | Sales Manager is able to create accounts for sales employees |
| Pre-condition: | Sales Manager is logged in to the app |
| Scenarios: | 1. Actor fills out all the information about the Sales Emplyoee. <br> 2. System creates an account and adds him to the database. |
| Result: | The Account is created and the Sales Employee can use it.|
| Exceptions: | 2. System displays error message if the account has already been made. <br> 2.1 Use case ends here. |

## Test Scenarios
<a name='Test-Scenarios'/>

### Table of contents test scenarios

- [Create booking success](#bookingTest1)
- [Create booking invalid flight ID](#bookingTest2)
- [Create booking invalid inputs](#bookingTest3)
- [Look up flight success](#lookUpFlightTest1)
- [Look up flight fail 1](#lookUpFlightTest2)
- [Look up flight fail 2](#lookUpFlightTest3)
- [Enter passenger info success](#enterPassengerInfoTest1)
- [Enter passenger info fail 1](#enterPassengerInfoTest2)
- [Enter passenger info fail 2](#enterPassengerInfoTest3)
- [Add extras to booking](#addExtrasToBookingTest1)
- [Add extras to booking no extras](#addExtrasToBookingTest2)
- [Set static discount](#2test)
- [Set dynamic discount to a specific flight](#dynamicDiscountTest1)
- [Set dynamic discount to a specific flight (fail scenario)](#dynamicDiscountTest1F)
- [Set dynamic discount to a location](#dynamicDiscountTest2)
- [Set dynamic discount to a location (fail scenario)](#dynamicDiscountTest2F)
- [Register flight](#4test)
- [Register flight (fail scenario)](#16test)
- [Enable price reductions](#5test)
- [Start sales process](#6test)
- [View management board](#8test)
- [Enter flight information](#9test)
- [Cancel flight](#10test)
- [Add an Airport](#12test)
- [Add a plane](#13test)
- [Create Account for Sales Employee](#14test)
- [Calculate the price of the booking](#15test)

<a name="bookingTest1"></a>
| Info | Description |
| --- | --- |
| Name: | Create booking |
| Scenario: | 1. [Look up a flight](#lookUpFlightTest1) <br> 2. [Enter passenger info](#enterPassengerInfoTest1) <br> 3. [Add extras to booking](#addExtrasToBookingTest1). <br> 4. System processes the information. <br> 5. [Calculate the price](#15test) <br> 6. System creates booking. <br> 7. System generates ticket. |
| Result: | Booking was created. |

<a name="bookingTest2"></a>
| Info | Description |
| --- | --- |
| Name: | Create booking invalid flight ID |
| Scenario: | 1. [Enter passenger info](#enterPassengerInfoTest1) <br> 2. Actor enters flight id(-1) <br> 3. [Add extras to booking](#addExtrasToBookingTest1). <br> 4. System processes the information. <br> 5. System displays error message: Invalid flight id. |
| Result: | Booking was not created (invalid flight id). |

<a name="bookingTest3"></a>
| Info | Description |
| --- | --- |
| Name: | Create booking invalid inputs |
| Scenario: | 1. [Look up flight fail](#lookUpFlightTest2) <br> 2. [Enter passenger info fail](#enterPassengerInfoTest3) <br> 3. [Add extras to booking](#addExtrasToBookingTest2). <br> 4. System processes the information. <br> 5. System displays error message. |
| Result: | Booking was not created (Other use-cases failed). |

<a name="lookUpFlightTest1"></a>
| Info | Description |
| --- | --- |
| Name: | Look up flight success. |
| Scenario: | 1. System displays form(departure, arrival, date) <br> 2. Actor fills in form(Dortmund, Timisoara, 2023-06-29). <br> 3.System displays found flight (ID: 1, Departure: Dortmund, Arrival: Timisoara, Departure time: 15:00, Arrival time: 18:00, Departure date: 2023-06-29, Arrival date: 2023-06-29). <br> 4. Actor selects the flight |
| Result: | A flight was selected. |

<a name="lookUpFlightTest2"></a>
| Info | Description |
| --- | --- |
| Name: | Look up flight fail (invalid input). |
| Scenario: | 1. System displays form(departure, arrival, date) <br> 2. Actor fills in form(12, 13, today). <br> 3. System displays error message: Departure invalid, arrival invalid, date invalid. |
| Result: | A flight was selected. |

<a name="lookUpFlightTest3"></a>
| Info | Description |
| --- | --- |
| Name: | Look up flight fail (invalid input). |
| Scenario: | 1. System displays form(departure, arrival, date) <br> 2. Actor fills in form('', '', ''). <br> 3. System displays error message: Departure can not be empty, arrival can not be empty, date can not be empty. |
| Result: | A flight was selected. |

<a name="enterPassengerInfoTest1"></a>
| Info | Description |
| --- | --- |
| Name: | Enter passenger info success. |
| Scenario: | 1. System displays form(First name, last name, email, phone number, date of birth, nationality, document number) <br> 2. Actor fills in form(Adam, Smith, adamsmith@gmail.com, +31645249631, 2000-02-19, Andorran, 435212). |
| Result: | Passenger info successfully entered. |

<a name="enterPassengerInfoTest2"></a>
| Info | Description |
| --- | --- |
| Name: | Enter passenger info fail (empty). |
| Scenario: | 1. System displays form(First name, last name, email, phone number, date of birth, nationality, document number) <br> 2. Actor fills in form('', '', '', '', '', '', ''). |
| Result: | Failed to enter passenger info. |

<a name="enterPassengerInfoTest2"></a>
| Info | Description |
| --- | --- |
| Name: | Enter passenger info fail (invalid input). |
| Scenario: | 1. System displays form(First name, last name, email, phone number, date of birth, nationality, document number) <br> 2. Actor fills in form(12, 13, /a, +31a, 2000-02-19, Andorran, 531131). |
| Result: | Failed to enter passenger info. |

<a name="addExtrasToBookingTest1"></a>
| Info | Description |
| --- | --- |
| Name: | Add extras to booking. |
| Scenario: | 1. System searches available extras for the plane assigned to the flight. <br> 2. System displays a checkbox for each available extra. (Food, extra luggage). <br> 3. Actor selects food. <br> 4. Actor confirms by pressing the "Create booking" button. |
| Result: | Extras added to booking. |

<a name="addExtrasToBookingTest2"></a>
| Info | Description |
| --- | --- |
| Name: | Add extras to booking no extras selected. |
| Scenario: | 1. System searches available extras for the plane assigned to the flight. <br> 2. System displays a checkbox for each available extra. (Food, extra luggage). <br> 3. Actor doesn't select any extras. <br> 4. Actor confirms by pressing the "Create booking" button. |
| Result: | No extras added to booking. |

<a name="15test"></a>
| Info | Description |
| --- | --- |
| Name: | Calculate the price |
| Scenario | 1. System looks up the distance between Dortmund and Timisoara (about 1300 km) and accordingly sets the price to 300 euros. <br> 2. System returns the calculated price.

<a name="14test"></a>
| Info | Description |
| --- | --- |
| Name: | Create Account for Sales Employee |
| Scenario: | 1. Actor fills out all the information from the Sales Emplyoee like name.<br> 2. System creates an account and adds him to the database. |
| Result: | A Sales Emplyee has an account. |

<a name="2test"></a>
| Info | Description |
| --- | --- |
| Name: | Set static discount for a certain flight |
| Scenario: | 1. Actor searches for a flight from Brussels to Madrid on 2023-06-01. <br> 2. System shows a flight from Brussels to Madrid on 2023-06-01, which costs **200** euros (two-way ticket). <br> 3. Actor presses on the flight to see more options. <br> 4. System displays options regarding the flight: price reductions, seats and discounts. <br> 5. Actor selects option that applies static discount to the flight. <br> 6. System asks for user input for the discount size in percent. <br> 7. Actor inputs **10** into the input field and presses confirmation button. <br> 8. System calculates the new price for the flight after applying the discount. <br> 9. System displays **180** euros as the new price for the flight. |
| Result: | The static discount of 10% has been applied for the flight |

<a name="dynamicDiscountTest1"></a>
| Info | Description |
| --- | --- |
| Name: | Set dynamic discount to a specific flight |
| Scenario: | 1. Actor presses "Discounts" button in the main menu. <br> 2. System takes him/her to discounts page. <br> 3. Actor searches for a flight from Amsterdam to Berlin. <br> 4. System displays flight from Amsterdam to Berlin on 2023-07-10, which costs **220** euros. <br> 5. Actor selects the flight from the list. <br> 6. System displays ID of selected flight ("4"). <br> 7. Actor presses button "Apply dynamic discount to a specific flight". <br> 8. System retrieves weather data from the day before current day in Berlin from external API. <br> 9. System calculates the discount and shows information pop up telling "Dynamic discount successfully applied to flight with id 4". |
| Result: | The dynamic discount is applied to the flight. |

<a name="dynamicDiscountTest1F"></a>
| Info | Description |
| --- | --- |
| Name: | Set dynamic discount to a specific flight (fail scenario) |
| Scenario: | 1. Actor presses "Discounts" button in the main menu. <br> 2. System takes him/her to discounts page. <br> 3. Actor presses button "Apply dynamic discount to a specific flight". <br> 4. System shows error message telling "Dynamic discount not applied, no flight selected". |
| Result: | Dynamic disocunt is not applied to a flight because no flight was selected. |

<a name="dynamicDiscountTest2"></a>
| Info | Description |
| --- | --- |
| Name: | Set dynamic discount to a location |
| Scenario: | 1. Actor presses "Discounts" button in the main menu. <br> 2. System takes him/her to discounts page. <br> 3. Actor searches for a location "Rome". <br> 4. System displays a location with name "Rome". <br> 5. Actor selects the location from the list. <br> 6. System displays the name of selected location ("Rome"). <br> 7. Actor presses button "Apply dynamic discount to a certain location". <br> 8. System retrieves weather data from the day before current day in Rome from external API. <br> 9. System calculates the discount and shows information pop up telling "Dynamic discount successfully applied to flights to Rome". |
| Result: | The dynamic discount is applied to all flights to Rome. |

<a name="dynamicDiscountTest2F"></a>
| Info | Description |
| --- | --- |
| Name: | Set dynamic discount to a location (fail scenario) |
| Scenario: | 1. Actor presses "Discounts" button in the main manu. <br> 2. System takes him/her to discounts page. <br> 3. Actor presses button "Apply dynamic discount to a certain location". <br> 4. System shows error message telling "Dynamic discount not applied, no location selected". |
| Result: | The dynamic discount is not applied because no location was selected. |

<a name="4test"></a>
|Info | Description |
| --- | --- |
| Name: | Register a new flight |
| Scenario: | 1. Actor selcts option "register a flight" from the main menu. <br> 2. System shows a form with departure and arrival airport,gate, departure date and arrival date, departure time and arival time, departure time zone and arrival time zone, model and number of seats, price and currency. <br> 3. Actor selects: AMS, IST, 4, 18.07.2023, 18.07.2023, 11:00, 15:00, Europe/Amsterdam, Europe/Istanbul, AirbusA380 150 ,200EUR. |
| Result: | Flight is successfully registered |

<a name="16test"></a>
|Info | Description |
| --- | --- |
| Name: | Register a new flight ( fail scenario) |
| Scenario: | 1. Actor selcts option "register a flight" from the main menu. <br> 2. System shows a form with departure and arrival airport,gate, departure date and arrival date, departure time and arival time, departure time zone and arrival time zone, model and number of seats, price and currency. <br> 3. Actor selects: OTP, DRT, 12, 15.06.2023, 15.06.2023, 11:00, 8:00, Europe/Bucharest, Etc/GMT+2, AirbusA380 150 ,150EUR. |
| Result: | Flight couldn't be registered because the departure time is after arrival time |

<a name="5test"></a>
| Info | Description |
| --- | --- |
| Name: | Enable temporary price reductions for a specific flight |
| Scenario: | 1. Actor searches for a flight from Milan (MIL) to London (LON) on 2023-05-20. <br> 2. System displays a flight from Milan (MIL) to London (LON) on 2023-05-20, which costs **250** euros both-way. <br> 3. Actor presses on the flight to see more information. <br> 4. System displays information regarding the flight: discounts, seats, price reductions. <br> 5. Actor chooses **"enable price reduction"** option. <br> 6. System promts asking for the amount of money removed from the price in euros. <br> 7. Actor inputs **50**. <br> 8. System calculates the new price for the flight. <br> 9. System displays the updated price - **200** euros. |
| Result: | The price of the flight is reduced by 50 euros |

<a name="6test"></a>
| Info | Description |
| --- | --- |
| Name: | Start the sales process |
| Scenario: | 1. Actor selects option "add a flight" from the main menu. <br> 2. System asks for user input: date, time, arrival airport, departure airport, plane and price. <br> 3. Actor fills in the fields: 2023-07-07, 13:30, Dubai (DXB), Dusseldorf (DUS), 8831, 300 euros and confirms the selection. <br> 4. System checks input and registers a new flight from DUsseldorf (DUS) to DUbai (DXB). <br> 5. Actor searches for a flight from Dussledorf (DUS) to Dubai (DXB). <br> 6. System shows the result: one registered flight from Dusseldorf(DUS) to Dubai(DXB) on 2023-07-07. <br> 7. Actor then chooses an option to start the sales process for this flight and confirms it. <br> 8. System makes the flight available to bookings (starts the sales process). |
| Result: | The sales process for the flight has started. |

<a name="8test"></a>
| Info | Description |
| --- | --- |
| Name: | View management board |
| Scenario: | 1. Actor open the management dasboard. <br> 2. System shows all the flights performed. <br> 3. Actor select a flight. <br> 4. System shows the important key performance indicators for that flight. <br> 5. Actors checks the number of tickets sold and statics for all extras sold. |
| Result: | Sales Manager view the important key performance indicators for a specific flight |

<a name="9test"></a>
| Info | Description |
| --- | --- |
| Name: | Enter information about the flight when creating it |
| Scenario: | 1. Actor selects **"add new flight"** option form the main menu. <br> 2. System prompts actor asking for flight details: date and time, plane, arrival airport and departure airport. <br> 3. Actor fills in the fields: date - 2023-08-09, time - 18:00, plane id - "1111", arrival airport - Tel-Aviv (TLV), departure airport - Eindhoven (EIN). <br> 4. System registers a new flight, which can be found by searching. |
| Result: | The flight from Eindhoven to Tel-Aviv is successfully registered. |

<a name="10test"></a>
| Info | Description |
| --- | --- |
| Name: | Cancel flight |
| Scenario: | 1. Actor selects **"cancel flight"** option form menu. <br> 2. System prompts actor asking for flight details: date and time, plane, arrival airport and departure airport. <br> 3. Actor fills in the fields: date - 2023-08-09, time - 18:00, plane - 1032, arrival airport - Dubai (DXB), departure airport - Dusseldorf (DUS). <br> 4. System cancels the flight. |
| Result: | The flight from Dusseldorf to Dubai is successfully cancelled. |

<a name="12test"></a>
| Info | Description |
| --- | --- |
| Name: | Add an Airport |
| Scenario: | 1. Actor clicks on "Add airport" button. <br> 2. System displays form(Country, City IATA code) <br> 3. Actor type Germany, Dusseldorf and DUS<br> 4. The system processes the information and adds the airport to the database.
| Result: | The airport is now registered and flights from and to the airport are now possible. |

<a name="13test"></a>
| Info | Description |
| --- | --- |
| Name: | Add a plane |
| Scenario: | 1. Actor selects "add a plane" option from the main menu. <br> 2. System prompts actor asking for the plane details: number of seats and model. <br> 3. Actor inputs the details: 368 for the number of seats, model - Boeing 777 and presses "confirm". <br> 4. System checks the data and registers a new plane. |
| Result: | A new plane which can be used in future flights has been registered. |

## Activity Diagrams
<a name='Activity-Diagrams'/>

### Apply Discount to a flight
![ApplyDiscountsToAFlight](https://user-images.githubusercontent.com/117171593/224731300-9d8eebb5-4222-401c-9165-36b0a9cab424.jpg)

### Register a flight (and start sales process)
![RegisterAFlightAndStartSalesProcess](images/RegisterAFlightAndStartSalesProcess.jpg)

### Edit flight 
![Activity Diagram1](https://user-images.githubusercontent.com/117170300/224569705-485a3340-30fb-44d8-a134-2c54531e1989.png)

### Booking a flight
![Booking a flight](images/BookingAFlight.jpg)

