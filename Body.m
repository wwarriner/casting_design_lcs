classdef Body
    
    methods ( Access = public )
        
        function obj = Body( lhs, operator, rhs )
            
            obj.lhs = lhs;
            if nargin == 1
                % leaf
                obj.operator = [];
                obj.rhs = [];
            else
                % branch
                obj.operator = lower( operator );
                obj.rhs = rhs;
            end
            
        end
        
        
        function im = draw( obj, resolution )
            
            lhs_im = obj.lhs.draw( resolution );
            if ~obj.is_leaf()
                rhs_im = obj.rhs.draw( resolution );
                switch obj.operator
                    case 'unify'
                        im = lhs_im | rhs_im;
                    case 'subtract'
                        im = lhs_im & ~rhs_im;
                    case 'intersect'
                        im = lhs_im & rhs_im;
                end
            end
            
        end
        
        
        function leaf = is_leaf( obj )
            
            leaf = isempty( obj.operator );
            
        end
        
    end
    
    
    properties ( Access = private )
        
        operator
        lhs
        rhs
        
    end
    
end

