mass = 100                      %mass of the car in kg
wheelbase = 100                 %wheelbase of the car in m
weightDistributionFr = 50/100   %front rear weight distributuon in ratio
cgHeight = 100                  %center of gravity height
Ax = 9.81                       %longitudinal acceleration from the IMU
g = 9.81                        %gravitational constant

fzRear = ((mass*wheelbase*weightDistributionFr*g)+(cgHeight*mass*Ax))/(wheelbase)

