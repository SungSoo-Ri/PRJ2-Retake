## Table of contents

- [Create booking](#1)
- [Set static discount](#2)
- [Set dynamic discount to a specific flight](#3)
- [Set dynamic discount to a specific flight (fail scenario)](#20)
- [Set dynamic discount to a location](#19)
- [Set dynamic discount to a location (fail scenario)](#21)
- [Register flight](#4)
- [Register flight (fail scenario)](#13)
- [Enable price reductions](#5)
- [Start sales process](#6)
- [Look up a flight](#7)
- [View management board](#8)
- [Enter flight information](#9)
- [Cancel flight](#10)
- [Enter passenger info](#11)
- [Add an Airport](#12)
- [Add a plane](#13)
- [Add a plane fail](#16)
- [Create Account for Staff Success](#700)
- [Create Account for Staff Last Name Blank](#710)
- [Create Account for Staff Last Name False Format 1](#711)
- [Create Account for Staff Last Name False Format 2](#712)
- [Create Account for Staff First Name Blank](#720)
- [Create Account for Staff First Name False Format 1](#721)
- [Create Account for Staff First Name False Format 2](#722)
- [Create Account for Staff Password Blank](#730)
- [Create Account for Staff Password Too Short](#731)
- [Create Account for Staff Passwords Do Not Match](#732)
- [Create Account for Staff Password No Upper Case Letter](#733)
- [Create Account for Staff Password No Lower Case Letter](#734)
- [Create Account for Staff Password No Digit](#735)
- [Update Account for Staff Success](#740)

<a name="1"></a>
| Info | Description |
| --- | --- |
| Name: | Create booking (select options, see price) |
| Scenario: | 1. System displays the date, origin and destination form.<br> 2. Actor fills in the form using 28.04.2023, Dortmund (DTM) and Timisoara (TSR).<br> 3. System processes the information.<br> 4. System looks for flights that match the data provided.<br> 5. System displays that there is one flight available for the entered information, at 14:50, taking 2 hours and 30 minutes. <br> 6. System [calculates the price](#15). <br> 7. Actor selects the flight.<br> 8. [Enter passenger info](#11) <br> 9. System creates booking. <br> 10. System creates ticket.
| Result: | A booking was created for a passenger. |

<a name="15"></a>
| Info | Description |
| --- | --- |
| Name: | Calculate the price |
| Scenario | 1. System looks up the distance between Dortmund and Timisoara (about 1300 km) and accordingly sets the price to 300 euros. <br> 2. System returns the calculated price.

<a name="2"></a>
| Info | Description |
| --- | --- |
| Name: | Set static discount to a specific flight |
| Scenario: | 1. Actor searches for a flight from Brussels to Madrid on 2023-06-01. <br> 2. System shows a flight from Brussels to Madrid on 2023-06-01, which costs **200** euros (two-way ticket). <br> 3. Actor presses on the flight to see more options. <br> 4. System displays options regarding the flight: price reductions, seats and discounts. <br> 5. Actor selects option that applies static discount to the flight. <br> 6. System asks for user input for the discount size in percent. <br> 7. Actor inputs **10** into the input field and presses confirmation button. <br> 8. System calculates the new price for the flight after applying the discount. <br> 9. System displays **180** euros as the new price for the flight. |
| Result: | The static discount of 10% has been applied for the flight |

<a name="3"></a>
| Info | Description |
| --- | --- |
| Name: | Set dynamic discount to a specific flight |
| Scenario: | 1. Actor presses "Discounts" button in the main menu. <br> 2. System takes him/her to discounts page. <br> 3. Actor searches for a flight from Amsterdam to Berlin. <br> 4. System displays flight from Amsterdam to Berlin on 2023-07-10, which costs **220** euros. <br> 5. Actor selects the flight from the list. <br> 6. System displays ID of selected flight ("4"). <br> 7. Actor presses button "Apply dynamic discount to a specific flight". <br> 8. System retrieves weather data from the day before current day in Berlin from external API. <br> 9. System calculates the discount and shows information pop up telling "Dynamic discount successfully applied to flight with id 4". |
| Result: | The dynamic discount is applied to the flight. |

<a name="20"></a>
| Info | Description |
| --- | --- |
| Name: | Set dynamic discount to a specific flight (fail scenario) |
| Scenario: | 1. Actor presses "Discounts" button in the main menu. <br> 2. System takes him/her to discounts page. <br> 3. Actor presses button "Apply dynamic discount to a specific flight". <br> 4. System shows error message telling "Dynamic discount not applied, no flight selected". |
| Result: | Dynamic disocunt is not applied to a flight because no flight was selected. |

<a name="19"></a>
| Info | Description |
| --- | --- |
| Name: | Set dynamic discount to a location |
| Scenario: | 1. Actor presses "Discounts" button in the main menu. <br> 2. System takes him/her to discounts page. <br> 3. Actor searches for a location "Rome". <br> 4. System displays a location with name "Rome". <br> 5. Actor selects the location from the list. <br> 6. System displays the name of selected location ("Rome"). <br> 7. Actor presses button "Apply dynamic discount to a certain location". <br> 8. System retrieves weather data from the day before current day in Rome from external API. <br> 9. System calculates the discount and shows information pop up telling "Dynamic discount successfully applied to flights to Rome". |
| Result: | The dynamic discount is applied to all flights to Rome. |

<a name="21"></a>
| Info | Description |
| --- | --- |
| Name: | Set dynamic discount to a location (fail scenario) |
| Scenario: | 1. Actor presses "Discounts" button in the main manu. <br> 2. System takes him/her to discounts page. <br> 3. Actor presses button "Apply dynamic discount to a certain location". <br> 4. System shows error message telling "Dynamic discount not applied, no location selected". |
| Result: | The dynamic discount is not applied because no location was selected. |

<a name="4"></a>
|Info | Description |
| --- | --- |
| Name: | Register a new flight |
| Scenario: | 1. Actor selcts option "register a flight" from the main menu. <br> 2. System shows a form with departure and arrival airport,gate, departure date and arrival date, departure time and arival time, departure time zone and arrival time zone, model and number of seats, price and currency. <br> 3. Actor selects: AMS, IST, 4, 18.07.2023, 18.07.2023, 11:00, 15:00, Europe/Amsterdam, Europe/Istanbul, AirbusA380 150 ,200EUR. |
| Result: | Flight is successfully registered |

<a name="13"></a>
|Info | Description |
| --- | --- |
| Name: | Register a new flight ( fail scenario) |
| Scenario: | 1. Actor selcts option "register a flight" from the main menu. <br> 2. System shows a form with departure and arrival airport,gate, departure date and arrival date, departure time and arival time, departure time zone and arrival time zone, model and number of seats, price and currency. <br> 3. Actor selects: OTP, DRT, 12, 15.07.2023, 15.07.2023, 11:00, 8:00, Europe/Bucharest, Etc/GMT+2, AirbusA380 150 ,150EUR. |
| Result: | Flight couldn't be registered because the departure time is after arrival time |



<a name="5"></a>
| Info | Description |
| --- | --- |
| Name: | Enable temporary price reductions for a specific flight |
| Scenario: | 1. Actor searches for a flight from Milan (MIL) to London (LON) on 2023-05-20. <br> 2. System displays a flight from Milan (MIL) to London (LON) on 2023-05-20, which costs **250** euros both-way. <br> 3. Actor presses on the flight to see more information. <br> 4. System displays information regarding the flight: discounts, seats, price reductions. <br> 5. Actor chooses **"enable price reduction"** option. <br> 6. System promts asking for the amount of money removed from the price in euros. <br> 7. Actor inputs **50**. <br> 8. System calculates the new price for the flight. <br> 9. System displays the updated price - **200** euros. |
| Result: | The price of the flight is reduced by 50 euros |

<a name="6"></a>
| Info | Description |
| --- | --- |
| Name: | Start the sales process |
| Scenario: | 1. Actor selects option "add a flight" from the main menu. <br> 2. System asks for user input: date, time, arrival airport, departure airport, plane and price. <br> 3. Actor fills in the fields: 2023-07-07, 13:30, Dubai (DXB), Dusseldorf (DUS), 8831, 300 euros and confirms the selection. <br> 4. System checks input and registers a new flight from DUsseldorf (DUS) to DUbai (DXB). <br> 5. Actor searches for a flight from Dussledorf (DUS) to Dubai (DXB). <br> 6. System shows the result: one registered flight from Dusseldorf(DUS) to Dubai(DXB) on 2023-07-07. <br> 7. Actor then chooses an option to start the sales process for this flight and confirms it. <br> 8. System makes the flight available to bookings (starts the sales process). |
| Result: | The sales process for the flight has started. |

<a name="7"></a>
| Info | Description |
| --- | --- |
| Name: | Look up available flight |
| Scenario: | 1. Actor searches for a flight from Amsterdam to Rome on 2023-09-01. <br> 2. System displays the flight from Amsterdam (AMS) to Rome (CIA), which costs 200 euros both-way. |
| Result: | The flight meeting the search criteria was found

<a name="8"></a>
| Info | Description |
| --- | --- |
| Name: | View management board |
| Scenario: | 1. Actor open the management dasboard. <br> 2. System shows all the flights performed. <br> 3. Actor select a flight. <br> 4. System shows the important key performance indicators for that flight. <br> 5. Actors checks the number of tickets sold and statics for all extras sold. |
| Result: | Sales Manager view the important key performance indicators for a specific flight |

<a name="9"></a>
| Info | Description |
| --- | --- |
| Name: | Enter information about the flight when creating it |
| Scenario: | 1. Actor selects **"add new flight"** option form the main menu. <br> 2. System prompts actor asking for flight details: date and time, plane, arrival airport and departure airport. <br> 3. Actor fills in the fields: date - 2023-08-09, time - 18:00, plane id - "1111", arrival airport - Tel-Aviv (TLV), departure airport - Eindhoven (EIN). <br> 4. System registers a new flight, which can be found by searching. |
| Result: | The flight from Eindhoven to Tel-Aviv is successfully registered. |

<a name="10"></a>
| Info | Description |
| --- | --- |
| Name: | Cancel flight |
| Scenario: | 1. Actor selects **"cancel flight"** option form menu. <br> 2. System prompts actor asking for flight details: date and time, plane, arrival airport and departure airport. <br> 3. Actor fills in the fields: date - 2023-08-09, time - 18:00, plane - 1032, arrival airport - Dubai (DXB), departure airport - Dusseldorf (DUS). <br> 4. System cancels the flight. |
| Result: | The flight from Dusseldorf to Dubai is successfully cancelled. |

<a name="11"></a>
| Info | Description |
| --- | --- |
| Name: | Enter passenger info |
| Scenario: | 1. System displays information form (Name, E-mail, Phone number, Card info). <br> 2. Actor fills in information with "Adam Smith", "adamsmith@gmail.com", "+31612345678" and "Adam Smith, 1234-5678-9012-3456, 08/23, 123". <br> 3. Actor presses confirm button. <br> 4. System processes the information.
| Result: | Passenger info was entered. |

<a name="12"></a>
| Info | Description |
| --- | --- |
| Name: | Add an Airport |
| Scenario: | 1. Actor clicks on "Add airport" button. <br> 2. System displays form(IATA Code, City, Country) <br> 3. Actor types DUS, Düsseldorf and Germany<br> 4. The system processes the information and adds the airport to the database.
| Result: | The airport is now registered and flights from and to the airport are now possible. |

| Info | Description |
| --- | --- |
| Name: | Add an Airport (int -> IATA-Code) |
| Scenario: | 1. Actor clicks on "Add airport" button. <br> 2. System displays form(IATA Code, City, Country) <br> 3. Actor types 187, Düsseldorf and Germany<br> 4. The system can't process the information and shows an error.
| Result: | The airport could not be created. |

| Info | Description |
| --- | --- |
| Name: | Add an Airport (empty -> Country) |
| Scenario: | 1. Actor clicks on "Add airport" button. <br> 2. System displays form(IATA Code, City, Country) <br> 3. Actor types DUS and Düsseldorf, Country field is empty<br> 4. The system can't proccess the information and shows an error.
| Result: | The airport could not be created. |

<a name="15"></a>
| Info | Description |
| --- | --- |
| Name: | Add a plane |
| Scenario: | 1. Actor selects "add a plane" option from the main menu. <br> 2. System prompts actor asking for the plane details: number of seats and model. <br> 3. Actor inputs the details: 368 for the number of seats, model - Boeing 777 and presses "confirm". <br> 4. System checks the data and registers a new plane. |
| Result: | A new plane which can be used in future flights has been registered. |

<a name="16"></a>
| Info | Description |
| --- | --- |
| Name: | Add a plane (String in number of seats field). |
| Scenario: | 1. Actor selects "add a plane" option from the main menu. <br> 2. System prompts actor asking for the plane details: number of seats and model. <br> 3. Actor inputs the details: "a" for the number of seats, model - "Boeing 777" and presses "confirm". <br> 4. System checks the data. <br> 5. System displays the message "Number of seats must be a number". |
| Result: | System didn't add a plane to the database. |

<a name="17"></a>
| Info | Description |
| --- | --- |
| Name: | Add a plane (Model int, Nr of Seats String). |
| Scenario: | 1. Actor selects "add a plane" option from the main menu. <br> 2. System prompts actor asking for the plane details: number of seats and model. <br> 3. Actor inputs the details: "abcd" for the number of seats, model - "187" and presses "confirm". <br> 4. System checks the data. <br> 5. System displays the message "Number of seats must be a number". |
| Result: | System didn't add a plane to the database. |

<a name="18"></a>
| Info | Description |
| --- | -- |
| Name: | Add a plane (number of seats field left empty). |
| Scenario: | 1. Actor selects "add a plane" option from the main menu. <br> 2. System prompts actor asking for the plane details: number of seats and model. <br> 3. Actor inputs the details: leaves number of seats field empty, model - "Airbus A380". <br> 4. System checks the data. <br> 5. System displays the message "Please enter enter a number of seats". |
| Result: | System didn't add a plane to the database. |

<a name="700"></a>
| Info | Description |
| --- | --- |
| Name: | Create Account for Staff Success |
| Scenario: | 1. Actor fills out form for the new user: last name: 'Mustermann', first name: 'Mathias', role: 'Sales Employee', password: 'TestPassword08', repeated password: 'TestPassword08'. <br> 2. Actor presses button 'Create'. <br> 3. System checks if all fields are filled correctly. <br> 4. System creates an account and adds it to the database. <br> 5. System clears text fields and relodes table |
| Result: | System did add an account to the database. |

<a name="710"></a>
| Info | Description |
| --- | --- |
| Name: | Create Account for Staff Last Name Blank |
| Scenario: | 1. Actor fills out form for the new user: first name: 'Mathias', role: 'Sales Employee', password: 'TestPassword08', repeated password: 'TestPassword08'. <br> 2. Actor presses button 'Create'. <br> 3. System checks if all fields are filled correctly. <br> 4. System checks that last name is blank. <br> 5. System prints message 'Enter a last name' underneath the last name text field |
| Result: | System did not add an account to the database. |

<a name="711"></a>
| Info | Description |
| --- | --- |
| Name: | Create Account for Staff Last Name False Format 1 |
| Scenario: | 1. Actor fills out form for the new user: last name: 'Mus7erm8nn', first name: 'Mathias', role: 'Sales Employee', password: 'TestPassword08', repeated password: 'TestPassword08'. <br> 2. Actor presses button 'Create'. <br> 3. System checks if all fields are filled correctly. <br> 4. System checks that last name contains at least one number. <br> 5. System prints message 'Please use only letters' underneath the last name text field |
| Result: | System did not add an account to the database. |

<a name="712"></a>
| Info | Description |
| --- | --- |
| Name: | Create Account for Staff Last Name False Format 2 |
| Scenario: | 1. Actor fills out form for the new user: last name: 'mustermann', first name: 'Mathias', role: 'Sales Employee', password: 'TestPassword08', repeated password: 'TestPassword08'. <br> 2. Actor presses button 'Create'. <br> 3. System checks if all fields are filled correctly. <br> 4. System checks that last name does not start with an upper case letter. <br> 5. System prints message 'Please write the first letter in upper case' underneath the last name text field |
| Result: | System did not add an account to the database. |

<a name="720"></a>
| Info | Description |
| --- | --- |
| Name: | Create Account for Staff First Name Blank |
| Scenario: | 1. Actor fills out form for the new user: last name: 'Mustermann', role: 'Sales Employee', password: 'TestPassword08', repeated password: 'TestPassword08'. <br> 2. Actor presses button 'Create'. <br> 3. System checks if all fields are filled correctly. <br> 4. System checks that first name is blank. <br> 5. System prints message 'Enter a first name' underneath the first name text field |
| Result: | System did not add an account to the database. |

<a name="721"></a>
| Info | Description |
| --- | --- |
| Name: | Create Account for Staff First Name False Format 1 |
| Scenario: | 1. Actor fills out form for the new user: last name: 'Mustermann', first name: 'M87hi8s', role: 'Sales Employee', password: 'TestPassword08', repeated password: 'TestPassword08'. <br> 2. Actor presses button 'Create'. <br> 3. System checks if all fields are filled correctly. <br> 4. System checks that first name contains at least one number. <br> 5. System prints message 'Please use only letters' underneath the first name text field |
| Result: | System did not add an account to the database. |

<a name="722"></a>
| Info | Description |
| --- | --- |
| Name: | Create Account for Staff First Name False Format 2 |
| Scenario: | 1. Actor fills out form for the new user: last name: 'Mustermann', first name: 'mathias', role: 'Sales Employee', password: 'TestPassword08', repeated password: 'TestPassword08'. <br> 2. Actor presses button 'Create'. <br> 3. System checks if all fields are filled correctly. <br> 4. System checks that last name does not start with an upper case letter. <br> 5. System prints message 'Please write the first letter in upper case' underneath the first name text field |
| Result: | System did not add an account to the database. |

<a name="730"></a>
| Info | Description |
| --- | --- |
| Name: | Create Account for Staff Password Blank |
| Scenario: | 1. Actor fills out form for the new user: last name: 'Mustermann', first name: 'Mathias', role: 'Sales Employee', password: 'TestPassword08'. <br> 2. Actor presses button 'Create'. <br> 3. System checks if all fields are filled correctly. <br> 4. System checks that one of the two password text fields is empty. <br> 5. System prints message 'Enter the password in both fields' underneath the first name text field |
| Result: | System did not add an account to the database. |

<a name="731"></a>
| Info | Description |
| --- | --- |
| Name: | Create Account for Staff Password Too Short |
| Scenario: | 1. Actor fills out form for the new user: last name: 'Mustermann', first name: 'Mathias', role: 'Sales Employee', password: 'Test08', repeated password: 'Test08'. <br> 2. Actor presses button 'Create'. <br> 3. System checks if all fields are filled correctly. <br> 4. System checks that password is not at least 12 letters long. <br> 5. System prints message 'Password too short' underneath the first name text field |
| Result: | System did not add an account to the database. |

<a name="732"></a>
| Info | Description |
| --- | --- |
| Name: | Create Account for Staff Passwords Do Not Match |
| Scenario: | 1. Actor fills out form for the new user: last name: 'Mustermann', first name: 'Mathias', role: 'Sales Employee', password: 'TestPassword08', repeated password: 'TestPassword09'. <br> 2. Actor presses button 'Create'. <br> 3. System checks if all fields are filled correctly. <br> 4. System checks that the two passwords do not match. <br> 5. System prints message 'Passwords have to match' underneath the first name text field |
| Result: | System did not add an account to the database. |

<a name="733"></a>
| Info | Description |
| --- | --- |
| Name: | Create Account for Staff Password No Upper Case Letter |
| Scenario: | 1. Actor fills out form for the new user: last name: 'Mustermann', first name: 'Mathias', role: 'Sales Employee', password: 'testpassword08', repeated password: 'testpassword08'. <br> 2. Actor presses button 'Create'. <br> 3. System checks if all fields are filled correctly. <br> 4. System checks that the password does not include upper case letters. <br> 5. System prints message 'Enter a password containing at least one upper and lowercase letter and one number' underneath the first name text field |
| Result: | System did not add an account to the database. |

<a name="734"></a>
| Info | Description |
| --- | --- |
| Name: | Create Account for Staff Password No Lower Case Letter |
| Scenario: | 1. Actor fills out form for the new user: last name: 'Mustermann', first name: 'Mathias', role: 'Sales Employee', password: 'TESTPASSWORD08', repeated password: 'TESTPASSWORD08'. <br> 2. Actor presses button 'Create'. <br> 3. System checks if all fields are filled correctly. <br> 4. System checks that the password does not include lower case letters. <br> 5. System prints message 'Enter a password containing at least one upper and lowercase letter and one number' underneath the first name text field |
| Result: | System did not add an account to the database. |

<a name="735"></a>
| Info | Description |
| --- | --- |
| Name: | Create Account for Staff Password No Digit |
| Scenario: | 1. Actor fills out form for the new user: last name: 'Mustermann', first name: 'Mathias', role: 'Sales Employee', password: 'TestPasswording', repeated password: 'TestPasswording'. <br> 2. Actor presses button 'Create'. <br> 3. System checks if all fields are filled correctly. <br> 4. System checks that the password does not include digts. <br> 5. System prints message 'Enter a password containing at least one upper and lowercase letter and one number' underneath the first name text field |
| Result: | System did not add an account to the database. |

<a name="740"></a>
| Info | Description |
| --- | --- |
| Name: | Update Account for Staff Success |
| Scenario: | 1. Actor selects profile with last name 'Mustermann' from the table <br> 2. System prints the data in text boxes: last name: 'Mustermann', first name: 'Mathias', role: 'Sales Employee', password: 'TestPassword08', repeated password: 'TestPassword08' and enables text fields and buttons. <br> 3. Actor changes 'Sales Employee' to 'Sales Officer', 'TestPassword08' to 'TestPassword80' and 'Mustermann' to 'Mann-Muster'. <br> 4. Actor presses button 'Update User Data'. <br> 5. System checks if all fields are filled correctly. <br> 6. System updates the specific data. <br> 7. System clears text fields, relodes table and disables taxt fields and buttons. |
| Result: | System has updated the wanted profile. |
