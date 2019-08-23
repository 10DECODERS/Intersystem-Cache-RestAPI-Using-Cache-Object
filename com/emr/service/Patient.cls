Class com.emr.service.Patient Extends %RegisteredObject
{

ClassMethod getAll()
{
	d ##Class(com.emr.dao.Patient).all()
	q
}

ClassMethod getPat(id)
{
	d ##Class(com.emr.dao.Patient).get(id)
	q
}

ClassMethod addPat()
{
	d ##Class(com.emr.dao.Patient).add()
	q
}

ClassMethod updPat(id)
{
	d ##Class(com.emr.dao.Patient).upd(id)
	q
}

ClassMethod delPat(id)
{
	d ##Class(com.emr.dao.Patient).del(id)
	q
}

}
