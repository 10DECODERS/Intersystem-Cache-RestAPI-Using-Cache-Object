Class com.emr.dao.Patient Extends %RegisteredObject
{

ClassMethod all()
{
    	f i=1:1{
	 	s ob=##Class(com.emr.model.Patient).%OpenId(i)
	 	q:'$d(ob)
	 	s n(i)=ob.Name
	 	s t(i)=ob.Telecom
	 	s a(i)=ob.Active
	 	s g(i)=ob.Gender
	 	s b(i)=ob.BirthDate
	 	s ad(i)=ob.Address
	 	s ms(i)=ob.MartialStatus
	 	s c(i)=ob.ContactPerson
	 	s gp(i)=ob.GeneralPractitioner
	 	s mo(i)=ob.ManagingOrganisation
	 	
	 	s oc={
		 	"Name":(n(i)),
		 	"Telecom":(t(i)),
		 	"Active":(a(i)),
		 	"Gender":(g(i)),
		 	"BirthDate":(b(i)),
		 	"Address":(ad(i)),
		 	"MartialStatus":(ms(i)),
		 	"ContactPerson":(c(i)),
		 	"GeneralPractitioner":(gp(i)),
		 	"ManagingOrganisation":(mo(i))
		 	} 
		 	w oc.%ToJSON()	
 	}
}

ClassMethod get(id)
{
 
	s ob=##Class(com.emr.model.Patient).%OpenId(id)
	s n=ob.Name
	s t=ob.Telecom
	s a=ob.Active
	s g=ob.Gender
	s b=ob.BirthDate
	s ad=ob.Address
	s ms=ob.MartialStatus
	s c=ob.ContactPerson
	s gp=ob.GeneralPractitioner
	s mo=ob.ManagingOrganisation
	s od={
		 	"Name":(n),
		 	"Telecom":(t),
		 	"Active":(a),
		 	"Gender":(g),
		 	"BirthDate":(b),
		 	"Address":(ad),
		 	"MartialStatus":(ms),
		 	"ContactPerson":(c),
		 	"GeneralPractitioner":(gp),
		 	"ManagingOrganisation":(mo)
		}
		w od.%ToJSON()
	q
}

ClassMethod add()
{
	s ob=##Class(com.emr.model.Patient).getJSON()
	s obj=##Class(com.emr.model.Patient).%New()
	s obj.Name=ob.Name
	s obj.Telecom=ob.Telecom
	s obj.Active=ob.Active
	s obj.Gender=ob.Gender
	s obj.BirthDate=ob.BirthDate
	s obj.Address=ob.Address
	s obj.MartialStatus=ob.MartialStatus
	s obj.ContactPerson=ob.ContactPerson
	s obj.GeneralPractitioner=ob.GeneralPractitioner
	s obj.ManagingOrganisation=ob.ManagingOrganisation
	q obj.%Save()
}

ClassMethod upd(id)
{
	
	s ob=##Class(com.emr.model.Patient).getJSON()
	s obj=##Class(com.emr.model.Patient).%OpenId(id)
	s obj.Name=ob.Name
	s obj.Telecom=ob.Telecom
	s obj.Active=ob.Active
	s obj.Gender=ob.Gender
	s obj.BirthDate=ob.BirthDate
	s obj.Address=ob.Address
	s obj.MartialStatus=ob.MartialStatus
	s obj.ContactPerson=ob.ContactPerson
	s obj.GeneralPractitioner=ob.GeneralPractitioner
	s obj.ManagingOrganisation=ob.ManagingOrganisation
	q obj.%Save()
}

ClassMethod del(id)
{
	d ##Class(com.emr.model.Patient).%DeleteId(id)
	q
}

}
