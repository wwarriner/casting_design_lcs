function im = draw_polynomial( polynomial, resolution )

x = linspace( 0, 1, resolution );
y = linspace( 0, 1, resolution );
im = nan( resolution, resolution );
for i = 1 : length( x )
    for j = 1 : length( y )
        im( i, j ) = polynomial.is_inside( x( i ), y( j ) );
    end
end

end

