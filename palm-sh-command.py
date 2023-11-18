import os
import sys
import google.generativeai as palm
from dotenv import load_dotenv

load_dotenv()

palm.configure(api_key=os.getenv("PALM_API_KEY"))

response = palm.generate_text(
    prompt=sys.argv[1],
    temperature=1.0,
    candidate_count=8
)
print(response.result)
