using System;
using System.Collections.Generic;
using System.Text;

namespace OOP1
{
    //snippet
    class Product
    {
        public int Id { get; set; }
        public int CategoryId { get; set; }
        //ÜrünAdı
        public string ProductName { get; set; }
        //ÜrününBirimFiyatı
        public double UnitPrice { get; set; }
        //StokAdedi
        public int UnitInStock { get; set; }

        //CreatReadUpdateDelete - CRUD gibi sistemler için Class'lar kullanılır


    }
}
