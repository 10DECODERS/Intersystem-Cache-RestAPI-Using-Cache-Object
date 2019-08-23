Class com.emr.service.Physician Extends %RegisteredObject
{

ClassMethod getAll()
{
	d ##Class(com.emr.dao.Physician).all()
	q
}

ClassMethod getPhy(id)
{
	d ##Class(com.emr.dao.Physician).get(id)
	q
}

ClassMethod addPhy()
{
	d ##Class(com.emr.dao.Physician).add()
	q
}

ClassMethod updPhy(id)
{
	d ##Class(com.emr.dao.Physician).upd(id)
	q
}

ClassMethod delPhy(id)
{
	d ##Class(com.emr.dao.Physician).del(id)
	q
}

}
