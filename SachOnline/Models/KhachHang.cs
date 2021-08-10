namespace SachOnline.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("KhachHang")]
    public partial class KhachHang
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public KhachHang()
        {
            GioHangs = new HashSet<GioHang>();
        }

        [Key]
        [StringLength(10)]
        [Required(ErrorMessage ="Trường này không được để trống")]
        public string SDT { get; set; }

        [StringLength(50)]
        [Required(ErrorMessage = "Trường này không được để trống")]
        public string TenKH { get; set; }

        [StringLength(50)]
        [Required(ErrorMessage = "Trường này không được để trống")]
        public string Email { get; set; }

        [StringLength(50)]
        [Required(ErrorMessage = "Trường này không được để trống")]
        public string MatKhau { get; set; }

        [StringLength(50)]
        [Required(ErrorMessage = "Trường này không được để trống")]
        public string DiaChi { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GioHang> GioHangs { get; set; }
    }
}
