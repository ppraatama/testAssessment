*** Settings ***
Library             SeleniumLibrary
Library             OperatingSystem
Library             String
Library             Collections

Resource            Config.robot

Resource            ../Resources/Common/Browser.robot
Resource            ../Resources/Common/CommonKeywords.robot
Resource            ../Resources/Homepage/Homepage.robot
Resource            ../Resources/Loginpage/Loginpage.robot
Resource            ../Resources/Personaldetail/Personaldetail.robot