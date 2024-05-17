import time

from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

driver=webdriver.Chrome()

driver.get("https://rahulshettyacademy.com/loginpagePractise/")
driver.find_element(By.XPATH,"//input[@id='username']").send_keys("rahulshettyacademy")
driver.find_element(By.ID,'password').send_keys("learning")
driver.find_element(By.ID,'signInBtn').click()

#elements=driver.find_elements(By.XPATH,"//h4[@class='card-title']")
dd=driver.find_elements(By.CSS_SELECTOR,"card-title")
print(dd)
#print(elements)


print("TTTTTTTTTT")
time.sleep(4)
