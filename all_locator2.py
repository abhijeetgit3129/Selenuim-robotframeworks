import time
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.select import Select

driver=webdriver.Chrome()
driver.get("https://rahulshettyacademy.com/AutomationPractice/")
driver.maximize_window()

print("-----------Suggession Class Example------------")

driver.find_element(By.ID,"autocomplete").send_keys("ind")
time.sleep(2)

country_names=driver.find_elements(By.XPATH,"//li[@class='ui-menu-item']")
print(type(country_names))

for i in country_names:
    if i.text=="India":
        i.click()


print("-----------select Class Example------------")
se=driver.find_element(By.ID,"dropdown-class-example")
d_w=Select(se)
d_w.select_by_value("option2")
time.sleep(2)

print("------------------window_handles----------------------------------")

driver.find_element(By.ID,"opentab").click()

w_h=driver.window_handles
for i in w_h:
    driver.switch_to.window(i)

    print(driver.current_window_handle.title())

    print(driver.title)
driver.switch_to.window(driver.window_handles[0])
print(driver.title)

time.sleep(3)
print("-------------------------------------------------------------------------------")
driver.find_element(By.ID,"openwindow").click()
print(driver.title)


time.sleep(2)
