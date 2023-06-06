using _0._0.DataTransferLayer.Dto;
using _4._0.RepositoryLayer.Repo;
using _5._0.DataAccessLayer.Query;


namespace _3._0.BusinessLayer.Business
{
    public class BusinessUser
    {
        public List<DtoUser> getAll()
        {
            RepoUser repoUser = new QUser();

            // Operaciones de negocio



            return repoUser.GetAll();
        }
    }
}
