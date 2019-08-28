Programatically download an excel file from the web;                                                  
                                                                                                      
  github                                                                                              
  https://tinyurl.com/y4mqusda                                                                        
  https://github.com/rogerjdeangelis/utl-programatically-downlaod-an-excel-file-from-the-web          
                                                                                                      
  SAS forum                                                                                           
  https://tinyurl.com/y6glgsth                                                                        
  https://communities.sas.com/t5/New-SAS-User/How-do-I-import-Excel-data-from-a-webpage/m-p/584608    
                                                                                                      
*_                   _                                                                                
(_)_ __  _ __  _   _| |_                                                                              
| | '_ \| '_ \| | | | __|                                                                             
| | | | | |_) | |_| | |_                                                                              
|_|_| |_| .__/ \__,_|\__|                                                                             
        |_|                                                                                           
;                                                                                                     
                                                                                                      
https://www.bls.gov/lpc/special_requests/us_total_hrs_emp.xlsx                                        
                                                                                                      
*            _               _                                                                        
  ___  _   _| |_ _ __  _   _| |_                                                                      
 / _ \| | | | __| '_ \| | | | __|                                                                     
| (_) | |_| | |_| |_) | |_| | |_                                                                      
 \___/ \__,_|\__| .__/ \__,_|\__|                                                                     
                |_|                                                                                   
;                                                                                                     
                                                                                                      
d:/xls/froWeb.xlsx                                                                                    
                                                                                                      
                                                                                                      
 +----------------------------------------------------+                                               
  |     A      |    B       |     C      |    D       |                                               
  +---------------------------------------------------+                                               
1 |  Sector    |    all     |   total    |  federal   |                                               
  |  coverage  |  workers   | employees  |  employees |                                               
  +------------+------------+------------+------------+                                               
2 |  1948Q1    |  63.292    |   4.842    |   1.328    |                                               
  +------------+------------+------------+------------+                                               
3 |  1948Q3    |  64.119    |   4.982    |   1.408    |                                               
  +------------+------------+------------+------------+                                               
3 |  1948Q2    |  63.143    |   4.892    |   1.347    |                                               
  +------------+------------+------------+------------+                                               
   ...                                                                                                
                                                                                                      
 [employment]                                                                                         
                                                                                                      
*                                                                                                     
 _ __  _ __ ___   ___ ___  ___ ___                                                                    
| '_ \| '__/ _ \ / __/ _ \/ __/ __|                                                                   
| |_) | | | (_) | (_|  __/\__ \__ \                                                                   
| .__/|_|  \___/ \___\___||___/___/                                                                   
|_|                                                                                                   
;                                                                                                     
                                                                                                      
filename bin url "https://www.bls.gov/lpc/special_requests/us_total_hrs_emp.xlsx";                    
                                                                                                      
data _null_;                                                                                          
   infile bin lrecl=256 recfm=F length=length eof=eof unbuf;                                          
   file "d:/xls/froWeb.xlsx" lrecl=256 recfm=N;                                                       
   input;                                                                                             
   file "d:/xls/froWeb.xlsx";                                                                         
   put _infile_ $varying256. length;                                                                  
   return;                                                                                            
 eof:                                                                                                 
   stop;                                                                                              
run;                                                                                                  
                                                                                                      
filename bin clear;                                                                                   
                                                                                                      
