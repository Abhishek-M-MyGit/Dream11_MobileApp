# Dream11_MobileApp  #  Creation of Dream11 Cricket Team

1. **Keyword Directory:**
   - Contains the `Dream11.robot` file, which defines various reusable keywords using the AppiumLibrary.
   - These keywords represent actions and verifications that interact with the Dream11 mobile app.
   - The keywords help modularize the test cases and enhance reusability across different test scenarios.

2. **Output Directory:**
   - Contains the output files generated after running the test cases using Robot Framework.
   - `log.html`: Detailed log report showing the execution steps and results of each test case.
   - `output.html`: A summarized report that displays the overall pass/fail status of the test cases.
   - `report.html`: An HTML report that includes both the log and output reports for better readability.

3. **Resources:**
   - **Testdata.py:** A Python file that stores test data variables used in the test cases.
   - **WebElements.py:** A Python file that defines web element locators used to interact with the Dream11 app.
   - These resource files help centralize the data and make it easier to maintain and update test data and element locators.

4. **Screenshots:**
   - A folder that stores screenshots captured during test execution at specific steps.
   - The screenshots help visualize the state of the app during test execution, aiding in debugging and reporting.

5. **TestCases:**
   - **Dream11_Assignment.robot:** This file contains the actual test cases implemented using the keywords defined in `Dream11.robot`.
   - Test cases are organized into different test scenarios, covering various functionalities of the Dream11 app.

**Summary:**
The Dream11 MobileApp project is an automation testing framework for the Dream11 fantasy cricket application on Android devices. The project structure is well-organized, with separate folders for keywords, resources, test cases, and output reports.

The "Keyword" directory contains the `Dream11.robot` file, defining reusable keywords that interact with the Dream11 app using the AppiumLibrary. This promotes code reusability and modularity in the test cases.

The "Output" directory stores the test execution reports generated after running the test cases. The reports, such as `log.html`, `output.html`, and `report.html`, provide detailed information about test execution results.

The "Resources" folder contains `Testdata.py` and `WebElements.py` Python files, centralizing test data and web element locators, making it easier to manage and update them.

The "Screenshots" folder stores screenshots taken during test execution, enabling better visualization and debugging of the app's state.

The "TestCases" folder holds the `Dream11_Assignment.robot` file, containing the actual test cases. The test cases cover various functionalities of the Dream11 app, utilizing the keywords defined in `Dream11.robot`.

Overall, the project's well-structured organization, use of reusable keywords, and clear reporting make it a robust and efficient automation testing framework for the Dream11 MobileApp.

**About Testcase:**

1. The Robot Framework script starts by importing the necessary libraries, such as AppiumLibrary, and loading the variables from separate Python files containing test data and web element locators.

2. The script includes variables to store the path for saving screenshots and placeholders for player names, such as Wicket Keepers, Batsmen, All-Rounders, and Bowlers.

3. The script defines keywords for launching the Dream11 app, logging in to the application, and navigating to the Dream11 home page.

4. The "Create Dream11 Cricket Team" keyword takes the user through the process of building a cricket team. It opens the desired match, selects players based on their roles, sets the captain and vice-captain, and captures screenshots during the process.

5. The "Validate All The Team Players" keyword is responsible for verifying the selected players against the expected ones. It fetches the player names from the UI, compares them with the previously set variables, and logs whether they match or not. The process involves selecting Wicket Keepers, Batters, All-Rounders, and Bowlers.

6. After verifying the selected team, the "Save Created Playing 11" keyword saves the final playing 11 and captures a screenshot for reference.
