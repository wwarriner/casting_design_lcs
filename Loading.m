classdef Loading
    
    methods ( Access = public )
        function obj = Loading(inputArg1,inputArg2)
            %LOADING Construct an instance of this class
            %   Detailed explanation goes here
            obj.Property1 = inputArg1 + inputArg2;
        end
        
        function outputArg = method1(obj,inputArg)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            outputArg = obj.Property1 + inputArg;
        end
    end
    
    
    properties ( Access = private )
        
        
        
    end
    
end

