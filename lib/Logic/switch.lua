type Cases = {
	[any]: () -> nil | "Break",

	default: () -> nil,
}

return function(Value: any, Case: Cases)
	for key, Function in Case do
		if key ~= Value then
			continue
		end

		if Function() ~= "Break" then
			continue
		end

		break
	end
end
