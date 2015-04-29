function quats = vec2quat( vertices )
	[nr,nc]=size(vertices);
	quats=zeros(nr,nc+1);
	quats(:,2:end)=vertices
end

