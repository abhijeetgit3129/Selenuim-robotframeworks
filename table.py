import time

from selenium import webdriver
from selenium.webdriver.common.by import By

ch_op=webdriver.ChromeOptions()
ch_op.add_argument('--start-maximized')
driver=webdriver.Chrome(options=ch_op)

list1=[]

driver.get("https://rahulshettyacademy.com/seleniumPractise/#/offers")
driver.find_element(By.XPATH,"//span[@class='sort-icon sort-descending']").click()

web_ele=driver.find_elements(By.XPATH,"//tr/td[1]")

for i in web_ele:
    list1.append(i.text)

list2=list1.copy()
list1.sort()

assert list2==list1



print(list1)
print(list2)
time.sleep(2)
