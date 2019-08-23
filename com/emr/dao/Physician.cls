Class com.emr.dao.Physician Extends %RegisteredObject
{

ClassMethod all()
{
	f i=1:1{
	 	s ob=##Class(com.emr.model.Physician).%OpenId(i)
	    q:'$d(ob)
	 	s n(i)=ob.Name
	 	s t(i)=ob.Telecom
	 	s a(i)=ob.Active
	 	s g(i)=ob.Gender
	 	s b(i)=ob.BirthDate
	 	s ad(i)=ob.Address
	 	s q(i)=ob.Qualification
	 	s oc={
		 	"Name":(n(i)),
		 	"Telecom":(t(i)),
		 	"Active":(a(i)),
		 	"Gender":(g(i)),
		 	"BirthDate":(b(i)),
		 	"Address":(ad(i)),
		 	"Qualification":(q(i))
		 	} 
		 	w oc.%ToJSON()
	 	}
}

ClassMethod get(id)
{
		s ob=##Class(com.emr.model.Physician).%OpenId(id)
	s n=ob.Name
	s t=ob.Telecom
	s a=ob.Active
	s g=ob.Gender
	s b=ob.BirthDate
	s ad=ob.Address
	s q=ob.Qualification
	s od={
		 	"Name":(n),
		 	"Telecom":(t),
		 	"Active":(a),
		 	"Gender":(g),
		 	"BirthDate":(b),
		 	"Address":(ad),
		 	"Qualification":(q)
		}
		w od.%ToJSON()
	q
}

ClassMethod add()
{
	s ob=##Class(com.emr.model.Physician).getJSON()
	s obj=##Class(com.emr.model.Physician).%New()
	s obj.Name=ob.Name
	s obj.Telecom=ob.Telecom
	s obj.Active=ob.Active
	s obj.Gender=ob.Gender
	s obj.BirthDate=ob.BirthDate
	s obj.Address=ob.Address
	s obj.Qualification=ob.Qualification
	q obj.%Save()
}

ClassMethod upd(id)
{
	s ob=##Class(com.emr.model.Physician).getJSON()
	s obj=##Class(com.emr.model.Physician).%OpenId(id)
	s obj.Name=ob.Name
	s obj.Telecom=ob.Telecom
	s obj.Active=ob.Active
	s obj.Gender=ob.Gender
	s obj.BirthDate=ob.BirthDate
	s obj.Address=ob.Address
	s obj.Qualification=ob.Qualification
	q obj.%Save()
}

ClassMethod del(id)
{
	d ##Class(com.emr.model.Physician).%DeleteId(id)
	q
}

}
