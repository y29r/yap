--!strict

const function isEmpty(t: { [any]: any }) : boolean
	return next(t) == nil
end

return isEmpty