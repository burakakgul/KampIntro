using System;

namespace EntityFrameworkDemo
{
    class Program
    {
        static void Main(string[] args)
        {
            //ORM - Object Relational Mapping - Nesnelerin veritabanı ile bağdaştırılması

            NorthwindContext northwindContext = new NorthwindContext();

            foreach (var product in northwindContext.Products)
            {
                Console.WriteLine(product.ProductName);
            }
        }
    }
}
