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
        [Required(ErrorMessage ="Vui lòng không bỏ trống trường này")]
        [StringLength(10)]


        public string SDT { get; set; }

        [Required(ErrorMessage = "Vui lòng không bỏ trống trường này")]
        [StringLength(10)]
        public string TenKH { get; set; }

        [StringLength(50)]
        [Required(ErrorMessage = "Vui lòng không bỏ trống trường này")]
        public string Email { get; set; }

        [Required(ErrorMessage = "Vui lòng không bỏ trống trường này")]
        [StringLength(50)]
        [DataType(DataType.Password)]
        public string MatKhau { get; set; }
        
        [Required(ErrorMessage = "Vui lòng không bỏ trống trường này")]
        [StringLength(50)]
        public string DiaChi { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GioHang> GioHangs { get; set; }
    }
}
