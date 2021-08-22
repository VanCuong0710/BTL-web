namespace SachOnline.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("AccountAdmin")]
    public partial class AccountAdmin
    {
        [Key]
        [Required(ErrorMessage = "Trường này không được để trống")]
        [StringLength(50)]
        public string MaTK { get; set; }

        [StringLength(50)]
        [Required(ErrorMessage = "Trường này không được để trống")]
        public string MatKhau { get; set; }

        [StringLength(50)]
        [Required(ErrorMessage = "Trường này không được để trống")]
        public string Ten { get; set; }

        [StringLength(10)]
        [Required(ErrorMessage = "Trường này không được để trống")]
        public string SDT { get; set; }

        [StringLength(50)]
        [Required(ErrorMessage = "Trường này không được để trống")]
        public string Quyen { get; set; }
    }
}
