 import pandas as pd

df = pd.read_csv("../sample_data/campaign_metadata.csv")

for campaign in df["campaign_name"]:
    parts = campaign.split("_")

    if len(parts) == 8:
        print(f"{campaign}: VALID")
    else:
        print(f"{campaign}: INVALID")
