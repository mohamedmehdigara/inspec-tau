control "helloWorld" do                                          
    impact 1.0      
                                    
    title "Hello World"             
                    
    desc "File should include the string Hello World." 

    ref "Hello World Requirement "

    describe file('helloworld.txt') do                       
     	its('content') { should include 'Hello World' } 
    end                                                 
end
