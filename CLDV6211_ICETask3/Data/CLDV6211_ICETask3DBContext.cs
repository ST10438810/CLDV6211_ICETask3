using Microsoft.EntityFrameworkCore;
using CLDV6211_ICETask3.Models;
using System.Collections.Generic;

namespace CLDV6211_ICETask3.Data
{
    public class CLDV6211_ICETask3DBContext : DbContext
    {
        public CLDV6211_ICETask3DBContext(DbContextOptions<CLDV6211_ICETask3DBContext> options)
            : base(options)
        {
        }

        public DbSet<Student> Students { get; set; }
    }
}
