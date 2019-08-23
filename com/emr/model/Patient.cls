Class com.emr.model.Patient Extends %Persistent
{

Property Name As %String [ Required ];

Property Telecom As %Numeric [ Required ];

Property Active As %Boolean [ Required ];

Property Gender As %String [ Required ];

Property BirthDate As %String [ Required ];

Property Address As %String [ Required ];

Property MartialStatus As %String [ Required ];

Property ContactPerson As %String [ Required ];

Property GeneralPractitioner As %String [ Required ];

Property ManagingOrganisation As %String [ Required ];

ClassMethod getJSON() As %DynamicObject
{
	s ot=##Class(%DynamicObject).%FromJSON(%request.Content)
	return ot
}

Storage Default
{
<Data name="PatientDefaultData">
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
<Value>Active</Value>
</Value>
<Value name="5">
<Value>Gender</Value>
</Value>
<Value name="6">
<Value>BirthDate</Value>
</Value>
<Value name="7">
<Value>Address</Value>
</Value>
<Value name="8">
<Value>MartialStatus</Value>
</Value>
<Value name="9">
<Value>ContactPerson</Value>
</Value>
<Value name="10">
<Value>GeneralPractitioner</Value>
</Value>
<Value name="11">
<Value>ManagingOrganisation</Value>
</Value>
</Data>
<DataLocation>^com.emr.model.PatientD</DataLocation>
<DefaultData>PatientDefaultData</DefaultData>
<IdLocation>^com.emr.model.PatientD</IdLocation>
<IndexLocation>^com.emr.model.PatientI</IndexLocation>
<StreamLocation>^com.emr.model.PatientS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
