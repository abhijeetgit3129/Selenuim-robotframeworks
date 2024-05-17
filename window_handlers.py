import time

from selenium import webdriver
from selenium.webdriver.common.by import By

driver=webdriver.Chrome()
driver.maximize_window()
driver.get("https://demo.automationtesting.in/Windows.html")
driver.find_element(By.XPATH,"//a[text()='Open Seperate Multiple Windows']").click()
driver.find_element(By.XPATH,"//button[@onclick='multiwindow()']").click()
#time.sleep(3)

current_window=driver.current_window_handle
print(current_window.title())
print(driver.title)
window_list=driver.window_handles
for window  in window_list:
    driver.switch_to.window(window)
    print(window)
    print(driver.title)
    if driver.title=="Index":
        driver.switch_to.window(window)
        time.sleep(2)





