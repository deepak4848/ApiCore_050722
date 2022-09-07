using System.ComponentModel.DataAnnotations;

namespace ApiCore_050722.Controllers.Model
{
    public class Teacher
    {
        [Key]
        public int id { get; set; }
        public String? name { get; set; }
        public int age { get; set; }
        public int salary { get; set; }
        public string? address { get; set; }
    }
}
