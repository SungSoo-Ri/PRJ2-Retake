## Table of contents
- [Create booking](#1)
- [Look up the flight](#2)
- [Register a flight](#3)
- [Enter passenger info](#4)
- [Enable price reductions](#5)
- [Set static discount](#6)
- [Set dynamic discount to a specific flight](#7)
- [Set dynamic discount to a location](#16)
- [View management board](#8)
- [Create accounts for staff](#9)
- [Start the sales process](#10)
- [Enter information about the flight](#11)
- [Cancel flight](#12)
- [Add an Airport](#13)
- [Add a plane](#14)
- [Calculating prices](#15)
- [Update staff account](#16)
- [Remove staff account](#17)
- [Add extras to booking.](#18)
- [Edit flight information](#19)

### Sales employee

<a name="1"></a>
| Info | Description |
| --- | --- |
| Name: | Create booking (select options, see price) |
| Actor: | Sales Employee |
| Description: | Sales employee wants to create a booking for a passenger. |
| Pre-condition: | Sales employee needs to be logged in |
| Scenario: | 1. [Look up the flight](#2) <br> 2. [Enter passenger info](#4). <br> 3. [Add extras to booking](#18) <br> 4. System processes the information.<br> 5. System [calculates the price](#15). <br> 6. System creates booking. <br> 7. System generates ticket.
| Result: | A booking was created for a passenger. |
| Exceptions: | 2. No available flights for the date, origin and destination provided <br>  2.1. Use case ends here. |

<a name="4"></a>
| Info | Description |
| --- | --- |
| Name: | Enter passenger info |
| Actor: | Sales Employee |
| Description: | Sales employee wants to enter passenger info in order to create the booking |
| Pre-condition: |  |
| Scenario: | 1. System displays information form (Name, E-mail, Phone number, Date of birth, Nationality, Document number). <br> 2. Actor fills in the information of the passenger. <br> 3. Actor presses confirm button. <br> 4. System processes the information.
| Result: | Passenger info was entered |
| Exceptions: | 3. Actor cancels. <br> 3.1 Use case ends here. |

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

<a name="18"></a>
| Info | Description |
| --- | --- |
| Name: | Add extras to booking |
| Actor: | Sales Employee |
| Description: | Add extras when creating a booking. |
| Pre-condition: | Actor wants to add extras to a specific booking when creating it. |
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

### Sales Officer

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
| Scenarios: | 1. Actor presses “Register a flight" button from the main menu. <br> 2. System shows a formula, which asks for a departure and arrival airport, departure date and arrival date, departure time and arrival time, departure time zone and arrival time zone and gate number. <br> 3. Actor selects airports, picks dates, time and time zones and fill in the gate number. <br> 4.Actor selects plane model and system shows the number of seats for that model. <br>5. Actor fills in the price and selects currency. <br> 6. System registers the flight.|
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

<a name="16"></a>
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

<a name="19"></a>
| Info | Description |
| --- | --- |
| Name: | Edit Flight Information |
| Actor: | Sales officer |
| Description: | The Sales officer can edit flight information when necessary. |
| Pre-condition: | Sales officer must be logged in. |
| Scenario: | 1. Actor clicks on "Search for flight" button. <br> 2. System displays a list of flights and a search bar on top. <br> 3. Actor enters a flight and presses the search button. <br> 4. System shows the requesteed flight and additional information. <br> 5. User modifies the flight and when they are done they press the "Update" button. <br> 6. System processes the updated information and adjusts the flight in the database. |
| Result: | The flight has been modified and the database is updated. |

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
| Name: | Creating accounts for staff |
| Actor: | Sales Manager |
| Description: | Sales Manager is able to create accounts for other Sales Managers, Sales Officers and Sales Employees |
| Pre-condition: | 1. Sales Manager is logged in to the app <br> 2. Manage Accounts window must be shown |
| Scenarios: | 1. Actor fills out form for the new user (surname,first name,role,password). <br> 2. Actor presses button 'Create'. <br> 3. System checks if all fields are filled correctly. <br> 4. System creates an account and adds it to the database. <br> 5. System clears text fields and relodes table |
| Result: | The Account is created.|
| Exceptions: | 3. System encounters false entry. <br> 3.1 System prints error message in respected field/-s. <br> 3.2 Use Case ends here |

<a name="16"></a>
| Info | Description |
| --- | --- |
| Name: | Update staff account |
| Actor: | Sales Manager |
| Description: | Sales Manager is able to update data of an existing staff account |
| Pre-condition: | 1. Sales Manager is logged in to the app <br> 2. Manage Accounts window must be shown <br> 3. At least one other profile has to exist |
| Scenarios: | 1. Actor selects profile from the table <br> 2. System prints data in text boxes and enables text fields and buttons <br> 3. Actor changes value/-s in text boxes <br> 4. Actor presses button 'Update User Data'. <br> 5. System checks if all fields are filled correctly. <br> 6. System updates the specific data. <br> 7. System clears text fields, relodes table and disables taxt fields and buttons. |
| Result: | The Account's data is updated |
| Exceptions: | 5. System encounters false entry. <br> 5.1 System prints error in respected field/-s. <br> 5.2 Use Case ends here |

<a name="17"></a>
| Info | Description |
| --- | --- |
| Name: | Remove staff account |
| Actor: | Sales Manager |
| Description: | Sales Manager is able to remove accounts from the database and make them unavailable |
| Pre-condition | 1. Sales Manager is logged in to the app <br> 2. Manage Accounts window must be shown <br> 3. At least one other profile has to exist |
| Scenarios: | 1. Actor selects profile from the table <br> 2. System prints data in text boxes. <br> 3. Actor presses button 'Remove User'. <br> 4. System deletes data from the database. <br> 5. System updates the specific data. <br> 7. System clears text fields, relodes table and disables taxt fields and buttons. |
| Result: | The account is removed |
