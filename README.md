# NSURLSession
NSURLSession iOS 10 and possibly from version 8.1. Parses returned JSON data
## Overview
The code example is in ViewController.swift.  The method takes a URL string, which sends an asynchronous request using NSURLSession.
The retured JSON is parsed and the data ca be processed for display on the app.
## Test Results
NSURLSession iOS 10 and possibly from version 8.1. Parses returned JSON data

{
    address = "106 Wentworth";
    email = "ndoda@simple-software.co.za";
    firstName = Ndoda;
    lastName = Kheswa;
    phone = "083-783-5733";
}
Optional(106 Wentworth)
2
{
    address = "2510 Zone 13";
    email = "frank@simple-software.co.za";
    firstName = Frank;
    lastName = Nodwezana;
    phone = "073-500-2074";
}
Optional(2510 Zone 13)
2
## Web Service 
The web service is implemented in the repository 
