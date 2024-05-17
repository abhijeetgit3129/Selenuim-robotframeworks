import time

from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.select import Select

driver=webdriver.Chrome()

driver.get("https://rahulshettyacademy.com/AutomationPractice/")
driver.maximize_window()


##radio buttion
print("**********************radio buttion*****************************************")
radio1=driver.find_element(By.XPATH,"//input[@value='radio1']")
radio1.click()
print(radio1.get_attribute("value"))
print(radio1.is_selected())
print(radio1.is_enabled())
print(radio1.is_displayed())

radio2=driver.find_element(By.XPATH,"//input[@value='radio2']")

print(radio2.get_attribute("value"))
print(radio2.is_selected())
print(radio2.is_enabled())
print(radio2.is_displayed())



#suggestin class example

print("**************************suggestin class example*******************************************************")
driver.find_element(By.ID,'autocomplete').send_keys("IND")
time.sleep(3)

country_list=driver.find_elements(By.XPATH,"//li[@class='ui-menu-item']")

for i in country_list:
    if i.text=="India":
        print(i.text)
        i.click()
        print(i.tag_name)


print("******************select_class****************************************************************")

drop_down=driver.find_element(By.XPATH,"//select[@id='dropdown-class-example']")
drop_down_select=Select(drop_down)

drop_down_select.select_by_value("option3")

time.sleep(2)

print("***************************************checkboxes*************************************************")
checkboxes=driver.find_elements(By.XPATH,"//input[@type='checkbox']")
for i in checkboxes:
    i.click()
    print(i.get_attribute("id"))


print("***************************alert******************************************************")

driver.find_element(By.ID,'name').send_keys("Abhijeet")
driver.find_element(By.XPATH,"//input[@id='alertbtn']").click()
al=driver.switch_to.alert
time.sleep(3)
al_text=al.text
print(al.text)
msg="Hello Abhijeet, share this practice page and share your knowledge"

assert  al_text  ==  msg

al.accept()


time.sleep(3)


print("***************************************************************windows handlers******")


driver.get("https://demo.automationtesting.in/Windows.html")
driver.find_element(By.XPATH,"//button[@class='btn btn-info']").click()
print(driver.current_window_handle)
handlers=driver.window_handles
for  i in handlers:

    driver.switch_to.window(i)
    print(driver.title)
    if driver.title=="Frames & windows":
        driver.close()
        time.sleep(3)

print("************************rahulshetty***********************")
driver.get("https://rahulshettyacademy.com/AutomationPractice/")
driver.find_element(By.XPATH,"//button[@id='openwindow']").click()
handle_rahul=driver.window_handles
for i in  handle_rahul:
    print(i)
    driver.switch_to.window(i)
    print(driver.title)
    if driver.title=="QAClick Academy - A Testing Academy to Learn, Earn and Shine":
        driver.maximize_window()
        time.sleep(3)
        print(driver.current_window_handle)
