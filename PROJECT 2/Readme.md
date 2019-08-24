Using the datasets from Kaggle, we settled on the Ghana Hospitals dataset.

We chose this dataset because, having 2 csv files, allowed us to do some joining and some complex data transformations.
These transformations were required in order to store the data in Postgres. Using the 2 files, we created 3 tables:
  Region
  District - Has a foreign key to the Region to which it belongs
  Facility - Has a foreign key to the District
