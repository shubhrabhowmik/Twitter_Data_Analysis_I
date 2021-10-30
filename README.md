# Twitter_Data_Analysis
Text Mining and Scraping with R

![image](https://user-images.githubusercontent.com/62785524/139521452-ceacf354-e5b7-4576-9ce9-c445e389df95.png)

# frequent terms
> findFreqTerms(udemytdm, lowfreq=11)
  [1] "alwayslearning…"    "course"             "free"               "now"               
  [5] "udemy"              "🇬🇧"                 "build"              "coupons"           
  [9] "courses"            "discount"           "projects"           "amp"               
 [13] "javascript"         "mean"               "nodejs"             "stack"             
 [17] "web"                "udemy…"             "design"             "gt…"               
 [21] "analytics"          "deeplearning"       "learn"              "learning"          
 [25] "machine"            "クーポン"           "amp…"               "become"            
 [29] "bylilyv"            "code"               "developer"          "featured"          
 [33] "php"                "power"              "theming"            "unlocking"         
 [37] "wordpress"          "css3"               "easiest"            "html5"             
 [41] "h…"                 "modern"             "real"               "responsive"        
 [45] "way"                "websites"           "world"              "link"              
 [49] "datascience…"       "wordpress…"         "friends"            "skillbakery"       
 [53] "udemycourse"        "100daysofcode"      "css"                "hours"             
 [57] "marketing"          "🆓"                 "2021"               "august"            
 [61] "programming"        "python"             "release"            "students"          
 [65] "modern…"            "crea…"              "master"             "react"             
 [69] "redux"              "routerwebpackand"   "update"             "v1663"             
 [73] "apps"               "curso"              "swift"              "routerwebpa…"      
 [77] "business"           "complete"           "create"             "using"             
 [81] "bootcamp"           "hours…"             "data"               "deep"              
 [85] "handson"            "science"            "tutoria…"           "amazon"            
 [89] "udemycoupon"        "ultimate"           "development"        "udemycoupon…"      
 [93] "udem…"              "webdevelopment"     "october"            "1199"              
 [97] "18102021"           "31102021"           "date"               "end"               
[101] "future"             "ht…"                "skills"             "start"             
[105] "starting"           "may"                "management"         "mins"              
[109] "scratch"            "hour"               "strategy"           "mastery"           
[113] "media"              "social"             "excel"              "website"           
[117] "…"                  "september"          "july"               "will"              
[121] "easetemplates"      "geeks"              "marketplace"        "online"            
[125] "theme"              "class"              "framework"          "java"              
[129] "spring"             "udemyfree"          "comidoc"            "security"          
[133] "basic"              "machine…"           "ligne"              "artificial"        
[137] "az™"                "alwayslearning"     "courcefree"         "onlinecourses"     
[141] "guide"              "masterclass"        "applied"            "realworld"         
[145] "analysis"           "angular"            "statistics"         "contempediacom"    
[149] "edition"            "instagram"          "intelligence"       "bukmedianet"       
[153] "computer"           "dat…"               "gans"               "httpstcobjnk4q7ci0"
[157] "opencv"             "ssd"                "vision"             "codingpseudo"      
[161] "datasci…"           "httpstcounprqyrkzx" "allez"              "carte"             
[165] "formez"             "mais"               "navez"              "pas"               
[169] "souspas"            "sur"                "voulez"             "vous"              
[173] "⚠️⚠️⚠️"                "💳"                 "newonline23"        "node"              
[177] "freehipwee1"        "sql"                "ethereum"           "solidity"          
[181] "zero"               "beginner"           "agimafr"            "electron"          
[185] "cousesites1"        "indepth"            "onlinec94005430"    "react…"            
[189] "laravel"            "day"                "education"          "httpstco1beeqrpnje"
[193] "httpstcon6r09ckcsc" "tensorflow"         "lms"                "teacher"  

                   
                   
# plot(udemyfit)
![image](https://user-images.githubusercontent.com/62785524/138910874-28d99b3d-f06e-4ebc-9ee6-d5c4b0e96cce.png)

            
# we can even color the 6 groups and plot them
rect.hclust(udemyfit, k=6, border="red")
![image](https://user-images.githubusercontent.com/62785524/138911090-275bf407-3c0b-42de-939b-d97dd698ccdc.png)

