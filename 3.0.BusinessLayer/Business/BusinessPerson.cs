using _0._0.DataTransferLayer.Dto;
using _4._0.RepositoryLayer.Repo;
using _5._0.DataAccessLayer.Query;

namespace _3._0.BusinessLayer.Business
{
    public class BusinessPerson
    {
        public List<DtoPerson> getAll()
        {
            RepoPerson repoPerson = new QPerson();

            // Operaciones de negocio

            //Falta implementar
            String a = "";
            int b = 0;


            return repoPerson.GetPage(a, b);
        }
    }
}
