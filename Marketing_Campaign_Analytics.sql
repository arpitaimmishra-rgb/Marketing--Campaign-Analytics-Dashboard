--Create the Schemas
SELECT * FROM campaign_data.campaign_data_1;

--Change the Column Name
alter table campaign_data_1
rename column ï»¿Record_ID to Record_ID;

--Basic Data checks
select * from campaign_data_1
limit 10;

--Check Total records
select count(*)
from campaign_data_1;

--Check Null values
SELECT 
    SUM(case when channel is null then 1 else 0 end) AS null_channel,
    SUM(case when Customer_Segment is null then 1 else 0 end) AS null_segment,
    SUM(case when Converted is null then 1 else 0 end) AS null_converted,
    SUM(case when Cost_INR is null then 1 else 0 end) AS null_cost
FROM campaign_data_1;

--Check the Duplicate Records
select Record_ID, count(*) as Count
from campaign_data_1
group by Record_ID
having count(*)> 1;

--Check Channel distribution
Select channel, count(*) AS Total_records
from campaign_data_1
group by Channel
order by Total_records desc;

--Check CTR % by Channel (how many people are clicked)
Select channel,
    count(*) AS Total_sent,
    sum(clicked) AS Total_clicked,
    round((sum(Clicked) / count(*)) * 100, 2) AS CTR_percent
from campaign_data_1
group by Channel
order by CTR_percent desc;

--Check Conversion Rate % by Channel (how many people are take action)
Select channel,
   count(*) AS Total_sent,
    sum(converted) AS Total_converted,
    round((sum(converted) / count(*)) * 100, 2) AS Conversion_Rate_percent
from campaign_data_1
group by Channel
order by Conversion_Rate_percent desc;

--Check Cost per Response by Channel (which channel gives less response)
Select channel,
    round(sum(cost_INR) / sum(Clicked), 2) AS Cost_per_Response
from campaign_data_1
group by Channel
order by Cost_per_Response asc;

--Check Campaign performance + ROI
select campaign_name, channel,
    round((sum(Clicked) / count(*)) * 100, 2) AS CTR_percent,
    round((sum(Converted) / count(*)) * 100, 2) AS Conversion_Rate_percent,
    round(sum(Revenue_INR) / sum(Cost_INR), 2) AS ROI
    from campaign_data_1
group by Campaign_Name, channel
order by Conversion_Rate_percent desc;

--Check Best performing campaigns
select Customer_Segment,
    count(*) AS Total_records,
    sum(Converted) AS Total_conversions,
    round((sum(Converted) / count(*)) * 100, 2) AS Conversion_Rate_percent
from campaign_data_1
group by Customer_Segment
order by Conversion_Rate_percent desc;