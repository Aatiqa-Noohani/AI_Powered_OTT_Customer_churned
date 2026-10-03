Create database Ott_churn_db;
use  Ott_churn_db;
select database();
USE ott_churn_db;
SHOW TABLES;
drop table  ott_customer_churn_5000;
drop table  project_churn ;
select * from 
ott_customer_churn;
SELECT 
    COUNT(*) AS Total_customers
    from ott_customer_churn;
SELECT 
    COUNT(*) AS Active_customers
    from ott_customer_churn
where churn_status ='Active';
SELECT 
    COUNT(*) AS churned_customers
    from ott_customer_churn
where churn_status ='churned';
SELECT 
    ROUND(
        COUNT(CASE WHEN Churn_Status = 'Churned' THEN 1 END) * 100.0 
        / COUNT(*),
        2
    ) AS Overall_Churn_Rate
FROM ott_customer_churn;
SELECT
    CASE
        WHEN Age BETWEEN 18 AND 25 THEN '18-25'
        WHEN Age BETWEEN 26 AND 35 THEN '26-35'
        WHEN Age BETWEEN 36 AND 45 THEN '36-45'
        WHEN Age BETWEEN 46 AND 55 THEN '46-55'
        WHEN Age >= 56 THEN '56+'
    END AS Age_Group,

    COUNT(*) AS Total_Customers,

    SUM(
        CASE
            WHEN Churn_Status = 'Churned' THEN 1
            ELSE 0
        END
    ) AS Churned_Customers,

    ROUND(
        SUM(
            CASE
                WHEN Churn_Status = 'Churned' THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate

FROM ott_customer_churn

GROUP BY
    CASE
        WHEN Age BETWEEN 18 AND 25 THEN '18-25'
        WHEN Age BETWEEN 26 AND 35 THEN '26-35'
        WHEN Age BETWEEN 36 AND 45 THEN '36-45'
        WHEN Age BETWEEN 46 AND 55 THEN '46-55'
        WHEN Age >= 56 THEN '56+'
    END

ORDER BY Churn_Rate DESC;
SELECT
    Gender,
    COUNT(*) AS Total_Customers,

    SUM(
        CASE
            WHEN Churn_Status = 'Churned' THEN 1
            ELSE 0
        END
    ) AS Churned_Customers,

    ROUND(
        SUM(
            CASE
                WHEN Churn_Status = 'Churned' THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate

FROM ott_customer_churn

GROUP BY Gender

ORDER BY Churn_Rate DESC;

SELECT
    Region,
    COUNT(*) AS Total_Customers,

    SUM(
        CASE
            WHEN Churn_Status = 'Churned' THEN 1
            ELSE 0
        END
    ) AS Churned_Customers,

    ROUND(
        SUM(
            CASE
                WHEN Churn_Status = 'Churned' THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate

FROM ott_customer_churn

GROUP BY Region

ORDER BY Churn_Rate DESC;


SELECT
    Subscription_Plan,
    
    COUNT(*) AS Total_Customers,

    SUM(
        CASE
            WHEN Churn_Status = 'Churned' THEN 1
            ELSE 0
        END
    ) AS Churned_Customers,

    ROUND(
        SUM(
            CASE
                WHEN Churn_Status = 'Churned' THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate

FROM ott_customer_churn

GROUP BY Subscription_Plan

ORDER BY Churn_Rate DESC;


SELECT
    Contract_Length,

    COUNT(*) AS Total_Customers,

    SUM(
        CASE
            WHEN Churn_Status = 'Churned' THEN 1
            ELSE 0
        END
    ) AS Churned_Customers,

    ROUND(
        SUM(
            CASE
                WHEN Churn_Status = 'Churned' THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate

FROM ott_customer_churn

GROUP BY Contract_Length

ORDER BY Churn_Rate DESC;

SELECT
    Auto_Renewal,

    COUNT(*) AS Total_Customers,

    SUM(
        CASE
            WHEN Churn_Status = 'Churned' THEN 1
            ELSE 0
        END
    ) AS Churned_Customers,

    ROUND(
        SUM(
            CASE
                WHEN Churn_Status = 'Churned' THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate

FROM ott_customer_churn

GROUP BY Auto_Renewal

ORDER BY Churn_Rate DESC;

SELECT
    CASE
        WHEN Monthly_Charges < 20 THEN '0-20'
        WHEN Monthly_Charges < 40 THEN '20-40'
        WHEN Monthly_Charges < 60 THEN '40-60'
        WHEN Monthly_Charges < 80 THEN '60-80'
        ELSE '80+'
    END AS Charge_Group,

    COUNT(*) AS Total_Customers,

    SUM(
        CASE
            WHEN Churn_Status = 'Churned' THEN 1
            ELSE 0
        END
    ) AS Churned_Customers,

    ROUND(
        SUM(
            CASE
                WHEN Churn_Status = 'Churned' THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate

FROM ott_customer_churn

GROUP BY
    CASE
        WHEN Monthly_Charges < 20 THEN '0-20'
        WHEN Monthly_Charges < 40 THEN '20-40'
        WHEN Monthly_Charges < 60 THEN '40-60'
        WHEN Monthly_Charges < 80 THEN '60-80'
        ELSE '80+'
    END

ORDER BY Churn_Rate DESC;

SELECT
    Payment_Method,

    COUNT(*) AS Total_Customers,

    SUM(
        CASE
            WHEN Churn_Status = 'Churned' THEN 1
            ELSE 0
        END
    ) AS Churned_Customers,

    ROUND(
        SUM(
            CASE
                WHEN Churn_Status = 'Churned' THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate

FROM ott_customer_churn

GROUP BY Payment_Method

ORDER BY Churn_Rate DESC;


SELECT
    CASE
        WHEN Average_Watch_Hours_Per_Week <= 5 THEN '0-5'
        WHEN Average_Watch_Hours_Per_Week <= 10 THEN '6-10'
        WHEN Average_Watch_Hours_Per_Week <= 20 THEN '11-20'
        WHEN Average_Watch_Hours_Per_Week <= 40 THEN '21-40'
        ELSE '40+'
    END AS Watch_Hours_Group,

    COUNT(*) AS Customers,

    SUM(CASE WHEN Churn_Status = 'Churned' THEN 1 ELSE 0 END) AS Churned,

    ROUND(
        100 * SUM(CASE WHEN Churn_Status = 'Churned' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS Churn_Rate

FROM ott_customer_churn

GROUP BY Watch_Hours_Group

ORDER BY
    CASE Watch_Hours_Group
        WHEN '0-5' THEN 1
        WHEN '6-10' THEN 2
        WHEN '11-20' THEN 3
        WHEN '21-40' THEN 4
        WHEN '40+' THEN 5
    END;
    
    SELECT
    CASE
        WHEN Customer_Support_Calls = 0 THEN '0'
        WHEN Customer_Support_Calls <= 2 THEN '1-2'
        WHEN Customer_Support_Calls <= 4 THEN '3-4'
        ELSE '5+'
    END AS Support_Calls_Group,

    COUNT(*) AS Customers,

    SUM(
        CASE
            WHEN Churn_Status = 'Churned' THEN 1
            ELSE 0
        END
    ) AS Churned,

    ROUND(
        100 * SUM(
            CASE
                WHEN Churn_Status = 'Churned' THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS Churn_Rate

FROM ott_customer_churn

GROUP BY Support_Calls_Group

ORDER BY
    CASE Support_Calls_Group
        WHEN '0' THEN 1
        WHEN '1-2' THEN 2
        WHEN '3-4' THEN 3
        WHEN '5+' THEN 4
    END;
    
SELECT
    CASE
        WHEN Days_Since_Last_Login <= 7 THEN '0-7'
        WHEN Days_Since_Last_Login <= 30 THEN '8-30'
        WHEN Days_Since_Last_Login <= 60 THEN '31-60'
        ELSE '60+'
    END AS Last_Login_Group,

    COUNT(*) AS Customers,

    SUM(
        CASE
            WHEN Churn_Status = 'Churned' THEN 1
            ELSE 0
        END
    ) AS Churned,

    ROUND(
        100 * SUM(
            CASE
                WHEN Churn_Status = 'Churned' THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS Churn_Rate

FROM ott_customer_churn

GROUP BY Last_Login_Group

ORDER BY
    CASE Last_Login_Group
        WHEN '0-7' THEN 1
        WHEN '8-30' THEN 2
        WHEN '31-60' THEN 3
        WHEN '60+' THEN 4
    END;
SELECT
    CASE
        WHEN Devices_Registered = 1 THEN '1'
        WHEN Devices_Registered = 2 THEN '2'
        WHEN Devices_Registered = 3 THEN '3'
        ELSE '4+'
    END AS Device_Group,

    COUNT(*) AS Customers,

    SUM(
        CASE
            WHEN Churn_Status = 'Churned' THEN 1
            ELSE 0
        END
    ) AS Churned,

    ROUND(
        100 * SUM(
            CASE
                WHEN Churn_Status = 'Churned' THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS Churn_Rate

FROM ott_customer_churn

GROUP BY Device_Group

ORDER BY
    CASE Device_Group
        WHEN '1' THEN 1
        WHEN '2' THEN 2
        WHEN '3' THEN 3
        WHEN '4+' THEN 4
    END;
    
    SELECT
    CASE
        WHEN Download_For_Offline_Count = 0 THEN '0'
        WHEN Download_For_Offline_Count <= 5 THEN '1-5'
        WHEN Download_For_Offline_Count <= 10 THEN '6-10'
        ELSE '11+'
    END AS Download_Group,

    COUNT(*) AS Customers,

    SUM(
        CASE
            WHEN Churn_Status = 'Churned' THEN 1
            ELSE 0
        END
    ) AS Churned,

    ROUND(
        100 * SUM(
            CASE
                WHEN Churn_Status = 'Churned' THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS Churn_Rate

FROM ott_customer_churn

GROUP BY Download_Group

ORDER BY
    CASE Download_Group
        WHEN '0' THEN 1
        WHEN '1-5' THEN 2
        WHEN '6-10' THEN 3
        WHEN '11+' THEN 4
    END;
    
SELECT
    CASE
        WHEN Login_Frequency_Per_Week <= 1 THEN '0-1'
        WHEN Login_Frequency_Per_Week <= 3 THEN '2-3'
        WHEN Login_Frequency_Per_Week <= 5 THEN '4-5'
        WHEN Login_Frequency_Per_Week <= 7 THEN '6-7'
        ELSE '8+'
    END AS Login_Frequency_Group,

    COUNT(*) AS Customers,

    SUM(
        CASE
            WHEN Churn_Status = 'Churned' THEN 1
            ELSE 0
        END
    ) AS Churned,

    ROUND(
        100 * SUM(
            CASE
                WHEN Churn_Status = 'Churned' THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS Churn_Rate

FROM  ott_customer_churn

GROUP BY Login_Frequency_Group

ORDER BY
    CASE Login_Frequency_Group
        WHEN '0-1' THEN 1
        WHEN '2-3' THEN 2
        WHEN '4-5' THEN 3
        WHEN '6-7' THEN 4
        WHEN '8+' THEN 5
    END;    
    SELECT
    CASE
        WHEN Streaming_Quality_Issues = 0 THEN '0'
        WHEN Streaming_Quality_Issues <= 2 THEN '1-2'
        WHEN Streaming_Quality_Issues <= 4 THEN '3-4'
        ELSE '5+'
    END AS Quality_Issues_Group,

    COUNT(*) AS Customers,

    SUM(
        CASE
            WHEN Churn_Status = 'Churned' THEN 1
            ELSE 0
        END
    ) AS Churned,

    ROUND(
        100 * SUM(
            CASE
                WHEN Churn_Status = 'Churned' THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS Churn_Rate

FROM ott_customer_churn

GROUP BY Quality_Issues_Group

ORDER BY
    CASE Quality_Issues_Group
        WHEN '0' THEN 1
        WHEN '1-2' THEN 2
        WHEN '3-4' THEN 3
        WHEN '5+' THEN 4
    ENd
    

