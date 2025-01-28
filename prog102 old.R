library(marinecs100b)

# Extracting data ---------------------------------------------------------

# How did you extract the temperature and exposure from the hottest day?
# Copy-paste the code here.
extractaialik_idx <- which(kefj_temperature)
hottest_time <- kefj_datetime[hottest_idx]
hottest_site <- kefj_site[hottest_idx]
aialik_start <- as.POSIXct("2012-06-01 00:00:00", tz = "Etc/GMT+8")
aialik_end <- as.POSIXct("2012-06-01 23:59:59", tz = "Etc/GMT+8")
hotday_idx <- kefj_site == hottest_site &
  kefj_datetime >= hotday_start &
  kefj_datetime <= hotday_end
hotday_datetime <- kefj_datetime[hottest_idx]
hotday_temperature <- kefj_temperature[hottest_idx]
hotday_exposure <- kefj_exposure[hottest_idx]
plot_kefj(hotday_datetime, hotday_temperature, hotday_exposure)

extract_Aialik <- function(useful_time) {
  aialik_start <- as.POSIXct(useful_time, tz = "Etc/GMT+8")
  return(aialik_start)

}

extract_Aialik("2012-06-01 00:00:00")


# If you want to change the site and date, what variables would need to change?
# You would need to change the

# What would you pick for the temperature extraction function name and parameter
# names?
#temp_extract

# Writing extraction functions --------------------------------------------

# Write your temperature extraction function here

# Write your exposure extraction function here

# Write your datetime extraction function here

# Visualize Nuka Pass temperatures on 2018-07-01

# How does the visualization code above compare to what you wrote in PROG101?


# Functions within functions (optional) -----------------------------------

# How would you parameterize the visualization code into its own function?
# Specifically, what would you call that function and its parameters?

# Write your wrapper function for plot_kefj(). Call it to compare the
# visualizations for Nuka Pass on July 1, 2018 versus January 1, 2018.
