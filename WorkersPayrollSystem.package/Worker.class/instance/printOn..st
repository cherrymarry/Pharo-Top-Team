printing
printOn: aStream
    aStream 
        nextPutAll: 'Працівник: '; 
        nextPutAll: surname asString; 
        nextPutAll: ' (Стаж: '; 
        print: experience; 
        nextPutAll: ' р., ЗП: '; 
        print: self weeklySalary; 
        nextPutAll: ')'