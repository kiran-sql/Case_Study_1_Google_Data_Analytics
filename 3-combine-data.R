# STEP 2: WRANGLE DATA AND COMBINE INTO A SINGLE FILE

# Compare column names each of the files
colnames(df_202204)
colnames(df_202104)

# Stack individual data frames into one big data frame
all_trips <- bind_rows(df_202204, df_202203, df_202202, df_202201,df_202112,df_202111,df_202110,df_202109,df_202108,df_202107,df_202106,df_202105,df_202104)

#check the data type of columns
dim(all_trips) 

all_trips = all_trips %>% na.omit()

# Remove unecessary columns
all_trips <- all_trips %>%  
  select(-c(start_lat, start_lng, end_lat, end_lng,start_station_name,start_station_id,end_station_name,end_station_id))
