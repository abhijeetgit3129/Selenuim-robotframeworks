import time

from selenium import webdriver
from selenium.webdriver.common.by import By

driver=webdriver.Chrome()
driver.maximize_window()
driver.get("https://demo.automationtesting.in/Windows.html")
driver.find_element(By.XPATH,"//a[normalize-space()='Open New Seperate Windows']").click()
driver.find_element(By.XPATH,"//button[@class='btn btn-primary']").click()
w_h=driver.window_handles
for window  in w_h:
    driver.switch_to.window(window)
    print(window)
    print(driver.title)
driver.maximize_window()
time.sleep(2)

driver.switch_to.window(w_h[0])

time.sleep(2)
