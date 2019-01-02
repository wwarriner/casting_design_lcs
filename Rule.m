classdef Rule < handle
    
    properties ( Access = private )
        
        inputs
        outputs
        
    end
    
    methods ( Access = public )
        
        function obj = Rule( inputs, outputs )
        
            obj.inputs = inputs;
            obj.outputs = outputs;
        
        end
        
        
        function obj = generate_offspring( other_rule, recombine_fcn )
            
        end
        
    end
end

