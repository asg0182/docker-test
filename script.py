import time
import datetime
import requests


def main():
    
    print(datetime.datetime.now())

    for i in range(3):
        print(f"Attempt {i}")
        time.sleep(2)
    
    resp = requests.get(url="https://google.com")
    print(f"{resp.code} {resp.text")


if __name__=="__main__":
    main()
