namespace SachOnline.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ChiTietGioHang")]
    public partial class ChiTietGioHang
    {
        [Key]
        [Column(Order = 0)]
        [StringLength(50)]
        public string MaGioHang { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(50)]
        public string MaSP { get; set; }

        [StringLength(1)]
        public string TenSP { get; set; }

        public int? SoLuong { get; set; }

        public int? DonGia { get; set; }

        public int? ThanhTien { get; set; }

        public virtual GioHang GioHang { get; set; }

        public virtual SanPham SanPham { get; set; }
    }
}
