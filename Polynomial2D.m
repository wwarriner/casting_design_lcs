classdef Polynomial2D
    
    methods ( Access = public )
        
        function obj = Polynomial2D( coefficients )
            
            assert( all( diff( size( coefficients ) ) == 0 ) );
            obj.coefficients = coefficients;
            obj.order = size( coefficients, ndims( coefficients ) );
            
        end
        
        
        function im = draw( obj, resolution )

            x = linspace( 0, 1, resolution );
            y = linspace( 0, 1, resolution );
            im = false( resolution, resolution );
            for i = 1 : length( x )
                for j = 1 : length( y )
                    im( i, j ) = obj.is_inside( x( i ), y( j ) );
                end
            end

        end
        
        
        function inside = is_inside( obj, x, y )
            
            inside = obj.evaluate( x, y ) < 0;
            
        end
        
        
        function value = evaluate( obj, x, y )
            
            value = obj.unit_vector( y ).' ...
                * ( obj.unit_vector( x ).' ...
                * obj.coefficients.' ).';
            
        end
        
        
        function v = unit_vector( obj, x )
            
            v = ones( obj.order, 1 );
            if obj.order == 1; return; end
            for i = 2 : obj.order
                v( i ) = v( i - 1 ) .* x;
            end
            
        end
        
    end
    
    
    properties ( Access = private )
        
        coefficients
        order
        
    end
    
end

