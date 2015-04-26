function q3 = sphereQuatInterpolation(q1, q2, u)

if ( u < 0 || u > 1)
	error("interpolation factor u has be be in [0,1]");
end

%% Ken Shoemake - "Animating Rotations with Quaternion Curves"

% normalize inputs
q1 = q1 ./ qNorm(q1);
q2 = q2 ./ qNorm(q2);

d = q1(:,1)' * q2;
absValueD = abs(d);

if (absValueD >= 1.0-eps) # no real solution for cosine
	fistTerm = 1.0-u;
	secondTerm = U;
else
	theta = acos(d);
	sinTheta = sin(theta);

	firstTerm = sin((1.0-u)*theta)/sinTheta;
	secondTerm = sin(u*theta)/sinTheta;
end

if (d < 0)
	firstTerm = -firstTerm;
end
	
	q3 = firstTerm * q1 + secondTerm * q2;
	q3 = q3 ./ qNorm(q3) % normalize output
end

