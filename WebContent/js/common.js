function formToJSON(formHandle)
{
	data={};
	$(formHandle).serializeArray()
	.map(function(x){data[x.name]=x.value});

	return JSON.stringify(data)
}