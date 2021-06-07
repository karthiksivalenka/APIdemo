#Libraries
import json
import requests
import pandas as pd
from pandas.io.json import json_normalize

#Define API and End point
jobs_url="https://www.themuse.com/api/public/jobs"

#
def extract_data_from_api(pages):
    for i in range(pages):
        response = requests.get(url=jobs_url, params={'page':i})
        data = response.json()
        #print(data)
		#debugging purpose
        data_df = pd.DataFrame(data["results"])
        data_df2 = data_df[['categories', 'company', 'id', 'levels', 'locations', 'model_type', 'name', 'publication_date', 
                            'short_name', 'type', 'tags']]
        print(data_df2[['categories', 'locations']].head(20))
        print(data_df2.head(2))
        
    return data
        

def transformations(jobs_data):
    #to_normalize data
    jobs_data = json_normalize(jobs_data["results"], sep="_")
    #to_normalize deeply nested data. There are errors in this because the json data has keys with null values. 
    df = json_normalize(jobs_data, sep='_',
                            record_path=["categories", "locations"],
                            meta=["id","model_type","name","publication_date",
                                  "short_name", "type",
                                 ["company", "id", "short_name", "name"]],
                            meta_prefix="jobs_", errors='ignore')
    
#This function is used to load data into staging table
def load_data_stage():

#This function is needed to transform data in the staging tables
def transform_stage_data():

#This function is used to load data into facts and dimensions
def load_data_dwh():

def etl():
    raw_data = extract_data_from_api(1)
    transformations(raw_data)

etl()