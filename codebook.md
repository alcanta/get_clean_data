### Code book for new data


#### Column labels:
1.  Activity
2.  Subject_ID 
3.  MEAN[ tBodyAcc-mean-X ] 
4.  MEAN[ tBodyAcc-mean-Y ]
5.  MEAN[ tBodyAcc-mean-Z ]
6.  MEAN[ tBodyAcc-std-X ]
7.  MEAN[ tBodyAcc-std-Y ] 
8.  MEAN[ tBodyAcc-std-Z ]
9.  MEAN[ tGravityAcc-mean-X ]
10. MEAN[ tGravityAcc-mean-Y ]
11. MEAN[ tGravityAcc-mean-Z ]
12. MEAN[ tGravityAcc-std-X ] 
13. MEAN[ tGravityAcc-std-Y ]
14. MEAN[ tGravityAcc-std-Z ]
15. MEAN[ tBodyAccJerk-mean-X ]
16. MEAN[ tBodyAccJerk-mean-Y ]
17. MEAN[ tBodyAccJerk-mean-Z ] 
18. MEAN[ tBodyAccJerk-std-X ] 
19. MEAN[ tBodyAccJerk-std-Y ] 
20. MEAN[ tBodyAccJerk-std-Z ]
21. MEAN[ tBodyGyro-mean-X ]
22. MEAN[ tBodyGyro-mean-Y ]
23. MEAN[ tBodyGyro-mean-Z ]
24. MEAN[ tBodyGyro-std-X ]
25. MEAN[ tBodyGyro-std-Y ] 
26. MEAN[ tBodyGyro-std-Z ] 
27. MEAN[ tBodyGyroJerk-mean-X ]
28. MEAN[ tBodyGyroJerk-mean-Y ]
29. MEAN[ tBodyGyroJerk-mean-Z ]
30. MEAN[ tBodyGyroJerk-std-X ]
31. MEAN[ tBodyGyroJerk-std-Y ]
32. MEAN[ tBodyGyroJerk-std-Z ] 
32. MEAN[ tBodyAccMag-mean ]
35. MEAN[ tBodyAccMag-std ]
36. MEAN[ tGravityAccMag-mean ]
37. MEAN[ tGravityAccMag-std ]
38. MEAN[ tBodyAccJerkMag-mean ]
39. MEAN[ tBodyAccJerkMag-std ] 
40. MEAN[ tBodyGyroMag-mean ] 
41. MEAN[ tBodyGyroMag-std ] 
42. MEAN[ tBodyGyroJerkMag-mean ] 
43. MEAN[ tBodyGyroJerkMag-std ] 
44. MEAN[ fBodyAcc-mean-X ] 
45. MEAN[ fBodyAcc-mean-Y ]
46. MEAN[ fBodyAcc-mean-Z ] 
47. MEAN[ fBodyAcc-std-X ]
48. MEAN[ fBodyAcc-std-Y ] 
49. MEAN[ fBodyAcc-std-Z ] 
50. MEAN[ fBodyAcc-meanFreq-X ]
51. MEAN[ fBodyAcc-meanFreq-Y ]
52. MEAN[ fBodyAcc-meanFreq-Z ]
53. MEAN[ fBodyAccJerk-mean-X ] 
54. MEAN[ fBodyAccJerk-mean-Y ] 
55. MEAN[ fBodyAccJerk-mean-Z ]
56. MEAN[ fBodyAccJerk-std-X ] 
57. MEAN[ fBodyAccJerk-std-Y ]
58. MEAN[ fBodyAccJerk-std-Z ]
59. MEAN[ fBodyAccJerk-meanFreq-X ]
60. MEAN[ fBodyAccJerk-meanFreq-Y ]
61. MEAN[ fBodyAccJerk-meanFreq-Z ]
62. MEAN[ fBodyGyro-mean-X ] 
63. MEAN[ fBodyGyro-mean-Y ] 
64. MEAN[ fBodyGyro-mean-Z ]
65. MEAN[ fBodyGyro-std-X ]
66. MEAN[ fBodyGyro-std-Y ]
67. MEAN[ fBodyGyro-std-Z ]
68. MEAN[ fBodyGyro-meanFreq-X ]
69. MEAN[ fBodyGyro-meanFreq-Y ]
70. MEAN[ fBodyGyro-meanFreq-Z ] 
71. MEAN[ fBodyAccMag-mean ]
72. MEAN[ fBodyAccMag-std ]
73. MEAN[ fBodyAccMag-meanFreq ]
74. MEAN[ fBodyBodyAccJerkMag-mean ] 
75. MEAN[ fBodyBodyAccJerkMag-std ] 
76. MEAN[ fBodyBodyAccJerkMag-meanFreq ] 
77. MEAN[ fBodyBodyGyroMag-mean ]
78. MEAN[ fBodyBodyGyroMag-std ] 
79. MEAN[ fBodyBodyGyroMag-meanFreq ]
80. MEAN[ fBodyBodyGyroJerkMag-mean ] 
81. MEAN[ fBodyBodyGyroJerkMag-std ]
82. MEAN[ fBodyBodyGyroJerkMag-meanFreq ]

#### Explanation:
**Column 1 Activity** is a factor and can take one of the values:
* WALKING    
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING     
* STANDING     
* LAYING

**Column 2 Subject_ID** is an int and can take values from 1 to 30 and represents the id of the subject

**Columns 3 to 81** are numericals representing  means of values included in the brackets. The description of the measurements included in the brackets are
found in the original codebook.
e.g.  *column 81 MEAN[ fBodyBodyGyroJerkMag-meanFreq ]* represents the mean of *fBodyBodyGyroJerkMag-meanFreq*,
see **features_info.txt and features.txt**
