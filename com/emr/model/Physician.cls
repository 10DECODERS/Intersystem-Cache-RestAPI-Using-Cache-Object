Class com.emr.model.Physician Extends %Persistent
{

Property Name As %String [ Required ];

Property Telecom As %Numeric [ Required ];

Property Address As %String [ Required ];

Property Active As %Boolean [ Required ];

Property Gender As %String [ Required ];

Property BirthDate As %String [ Required ];

Property Qualification As %String [ Required ];

ClassMethod getJSON() As %DynamicObject
{
	s ot=##Class(%DynamicObject).%FromJSON(%request.Content)
	return ot
}

Storage Default
{
<Data name="PhysicianDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
<Value name="3">
<Value>Telecom</Value>
</Value>
<Value name="4">
<Value>Address</Value>
</Value>
<Value name="5">
<Value>Active</Value>
</Value>
<Value name="6">
<Value>Gender</Value>
</Value>
<Value name="7">
<Value>BirthDate</Value>
</Value>
<Value name="8">
<Value>Qualification</Value>
</Value>
</Data>
<DataLocation>^com.emr.model.PhysicianD</DataLocation>
<DefaultData>PhysicianDefaultData</DefaultData>
<IdLocation>^com.emr.model.PhysicianD</IdLocation>
<IndexLocation>^com.emr.model.PhysicianI</IndexLocation>
<StreamLocation>^com.emr.model.PhysicianS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
