using System;
using System.Collections.Generic;
using System.Text;

namespace Metotlar
{
    class SepetManager
    {
        //naming convention, methodun büyük harfle başlaması
        // syntax
        //Ürünle ilgili her türlü işlem burada yapılır
        public void Ekle(Urun urun)
        {
            Console.WriteLine("Tebrikler Sepete eklendi! : "+urun.Adi);
        }

        public void Ekle2(string urunAdi, string aciklama, double fiyat,int stokAdedi)
        {
            Console.WriteLine("Tebrikler, Sepete Eklendi: "+urunAdi);
        }
    }
}
