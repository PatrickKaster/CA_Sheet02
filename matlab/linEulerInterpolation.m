function e3 = linEulerInterpolation(e1, e2, u)

if ( u < 0 || u > 1)
	error("interpolation factor u has be be in [0,1]");
end

	e3 = (1.0-u)*e1 + u*e2;
end

