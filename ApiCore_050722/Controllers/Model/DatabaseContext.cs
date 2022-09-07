using Microsoft.EntityFrameworkCore;

namespace ApiCore_050722.Controllers.Model
{
    public class DatabaseContext : DbContext
    {
        public DatabaseContext(DbContextOptions<DatabaseContext>option):base(option)
        {

        }
        public DbSet<Teacher> Techers { get; set; }
    }
}
