using Microsoft.EntityFrameworkCore;

namespace quizApp
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options): base(options)
        {
                
        }

        public DbSet<Question> Question { get; set; }
        public DbSet<Choice> Choice { get; set; }
    }
}