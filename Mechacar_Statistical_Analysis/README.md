# MechaCar Statistical Analysis 

## Background 
A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

In this challenge, you’ll help Jeremy and the data analytics team do the following:
    Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
    Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
    Run t-tests to determine if the manufacturing lots are statistically different from the mean population
    Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Deliverable 1. Linear Regression to predict MPG

<img width="1186" alt="D1 Screen Shot" src="https://user-images.githubusercontent.com/86068655/153758354-4a6ec220-a462-4c29-9520-d49bbd3556e8.png">

mpg = (6.267)vehicle_length + (0.0012)vehicle_weight + (0.0688)spoiler_angle + (3.546)ground_clearance + (-3.411)AWD + (-104.0)

From the statistics above, we can conclude the vehicle length and vehicle ground clearence have a significant impact on miles per gallon on this special project. Additionally, AWD, vehicle weight, and spoiler angle that suggest random variance according to the data set. 

Our p-value for this data set is 5.35e-11, which is smaller thn the presumed significance level of .05%. That being said, the null hypothesis will be rejected and this being proof that in our linear model, the slope will not be zero.

The data set also has an r-squared value of .7149 which means about 71% of mpg trials is found in the data set; which relatively speaking, is a good prediction of mpg of MechaCar prototypes in this project. 


## Deliverable 2. Summary Statistics on Suspension Coils
The MechaCar Suspension_Coil data set shows the results from multiple lots. From this data set we found the weight capacities of suspension coils in prototytpe cars. From all lots..

<img width="349" alt="D2 Screen Shot" src="https://user-images.githubusercontent.com/86068655/153758985-d269c42f-c18e-4927-9d4e-68be5ccf947f.png">

Then From each of the 3 lots.. 

<img width="1196" alt="D2 2nd pic" src="https://user-images.githubusercontent.com/86068655/153759124-346bf82e-69ea-4b27-83e6-39b4a85f2a3c.png">

From a more indepth look at each lot, we can see Lot 3 had an extremely high variance, and a slightly lower mean than what our null hypothesis show. The std deviation was also high. It would be safe to assume lot 3 had the worst results in comparion to the other 2 lots. Lots 1 and 2 show more consistency with results with variances of .98 and 7.47 respectively. Lots 1 and 2 also are within the 100PSI variance requirement, which lot 3 is not.

## Deliverable 3. T-Tests on Suspension Coils

A T-test accross all lots are shown below..

<img width="435" alt="D3 TTest" src="https://user-images.githubusercontent.com/86068655/153759445-9e15f7ae-0c78-4d89-8aec-35f1f9b1104b.png">

The actual mean of the sample is 1498.78. The p-value is .06 which is higher than .05; therefore, there is not enough evidence to encourage the rejection of the null hypothesis. 

### Individual lots

<img width="653" alt="D3 Multi Lot" src="https://user-images.githubusercontent.com/86068655/153759646-91b61a2b-ea74-4243-b1ae-bdbc79e8b92d.png">

    1. Lot 1 has a mean sample of 1500, so obviously we have to accept the null hypothesis for lot 1 because there is not statistical difference from the sample         mean and population mean.
    2. Lot 2 has just about the same outcome as lot 1 with the sample mean jsut slightly different of 1500.02, which means we cannot reject the null hypothesis.
    3. Lot 3 is the runt of the sample. The sample mean is 1496.14, off from the 1500 null hypothesis. The p-value is .04168 with is lower than the significance    level of .05, which indicates for lot 3 to reject the null hypothesis. 
    

## Study Design: MechaCar vs Competition
As a consumer, fuel efficiency, safety, comfort, and practicality are all things I look for. however, each car brand markets to various consumers with various selling points. Fuel efficency and safety is always something a car buyer should know. And Horse power/engine size is another commonly sought after selling point when marketing vehicles. With the MechaCar study finding MPG and tossing in AWD is extremely positive. I think including safety and engine size would be a strong argument to be competitive with other brands. Hypothesis for a comparitive study would ultimately depend on vehicle type (car, suv, truck) as well as variable engine size and additional weight. Using a t-test and assisting p-valus would relay which data would support or reject the determined null hypothesis. Additional data from another test of various vehicle types or the specific vehicle being tested would suffice as testable data, but that would be determined by the coming questions being asked of a new experiment. 
