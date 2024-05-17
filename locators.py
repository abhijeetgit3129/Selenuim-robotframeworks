import time

from selenium import webdriver
from selenium.webdriver import ActionChains
from selenium.webdriver.common.by import By
from selenium.webdriver.support.select import Select

ch_op=webdriver.ChromeOptions()
ch_op.add_argument('--start-maximized')
driver =webdriver.Chrome(options=ch_op)

driver.get("https://rahulshettyacademy.com/AutomationPractice/")
#driver.maximize_window()
driver.find_element(By.XPATH,"//input[@value='radio2']").click()
driver.find_element(By.XPATH,"//input[@value='radio3']").click()
driver.find_element(By.XPATH,"//input[@value='radio2']").click()


driver.find_element(By.ID,"autocomplete").send_keys("ind")
time.sleep(4)
country_list=driver.find_elements(By.XPATH,"//li[@class='ui-menu-item']")
for i in country_list:
    if i.text=="India":
        i.click()

time.sleep(2)

driver.find_element(By.ID,"checkBoxOption1").click()
driver.find_element(By.ID,"checkBoxOption3").click()
driver.find_element(By.ID,"checkBoxOption1").click()

driver.find_element(By.XPATH,"//input[@id='name']").send_keys("abhijeet")
driver.find_element(By.ID,"alertbtn").click()
test_alert=driver.switch_to.alert.text
text_1="Hello abhijeet, share this practice page and share your knowledge"
driver.switch_to.alert.accept()
assert test_alert == text_1
print(test_alert)

print("**********************************************************")
current_window_handle=driver.current_window_handle
print(current_window_handle)
#driver.find_element(By.ID,"openwindow").click()
driver.find_element(By.ID,"opentab").click()

w_h=driver.window_handles

for i in w_h:
    driver.switch_to.window(i)
    #print(i)
    print(driver.title)
    if driver.title== "QAClick Academy - A Testing Academy to Learn, Earn and Shine":
        driver.switch_to.window(i)
        driver.maximize_window()

driver.find_element(By.LINK_TEXT,"Access all our Courses").click()
driver.close()
driver.switch_to.window(current_window_handle)

time.sleep(2)
s=driver.find_element(By.ID,"dropdown-class-example")
s_e=Select(s)
s_e.select_by_value("option3")


driver.switch_to.frame("courses-iframe")
driver.find_element(By.LINK_TEXT,"Practice").click()
driver.switch_to.default_content()
driver.find_element(By.XPATH,"//input[@id='checkBoxOption1']").click()



#mouse operation



acs= ActionChains(driver)

mouse=driver.find_element(By.ID,'mousehover')
acs.move_to_element(mouse).perform()
#acs.context_click(mouse).perform()
time.sleep(6)
top=driver.find_element(By.LINK_TEXT,"Top").click()
acs.click(top).perform()
time.sleep(6)
acs.move_to_element(mouse).perform()
acs.context_click().perform()



#driver.execute_script()

#acs.drag_and_drop_by_offset(source,destination)


time.sleep(6)

