import time

from selenium import webdriver
from selenium.webdriver.common.by import By

ch_op=webdriver.ChromeOptions()
ch_op.add_argument('--start-maximized')
driver=webdriver.Chrome(options=ch_op)

driver.get("https://rahulshettyacademy.com/AutomationPractice/")


driver.save_screenshot("abhi.png")
driver.get_screenshot_as_file("tiger.png")
