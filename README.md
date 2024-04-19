# Indiemart Visualization Project

This project aims to visualize insights from the online shopping platform called Indiemart, using data from the provided source: [Indiemart Database](http://194.233.94.36/indiemart.db).

## Overview

The data that used in this project spans over a period of around three months, starting from 23 November 2023 until 4 March 2024. This project aim to uncover valuable insights and trends within the Indiemart platform.

## Dashboard

The visualization of the insights is presented through a single-page dashboard built using Looker Studio. You can access the dashboard [here]([link](https://lookerstudio.google.com/s/txfcAULybdg)). Below is a glimpse of how the dashboard appears (also can be seen here: ![dashboard](https://lookerstudio.google.com/u/0/reporting/e03436b5-366a-475b-9e57-0fe16684daaf/page/VgnsD/edit):

![Dashboard Preview](https://github.com/auliaaaz/Indiemart-Mini-Challenge/blob/main/img_dashboard.png)

Here are some highlights regarding the dashboard:
1. **Market Presence: Alfagift lists nearly twice as many items as klikindomaret**, highlighting its significant market presence and possibly its dominance.
2. **Consumer Focus: A high frequency of discounts in the 'Personal Care' and 'Food'** categories across both platforms suggests a strategic focus on attracting customers in these high-demand areas.
3. **Seasonal Trends: Pricing peaks in alfagift's data at the end of February might be linked to its birthday celebrations**, indicating the use of strategic promotional pricing or the exclusive products during this period.


## Additional Information

To streamline the process of accessing and analyzing the data, this project utilized DBT (Data Build Tool) to transform and model the data. The resulting data model is then loaded into BigQuery, which serves as the data source for Looker Studio.
