﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PetShop.Data
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class Pet_shopEntities : DbContext
    {
        private static Pet_shopEntities _context;
        public Pet_shopEntities()
            : base("name=Pet_shopEntities")
        {
        }
        public static Pet_shopEntities GetContext()
        {
            if(_context == null)
            {
                _context =new Pet_shopEntities();
            }
            return _context;
        }
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<City> City { get; set; }
        public virtual DbSet<Index> Index { get; set; }
        public virtual DbSet<Order> Order { get; set; }
        public virtual DbSet<OrderProduct> OrderProduct { get; set; }
        public virtual DbSet<PickPoint> PickPoint { get; set; }
        public virtual DbSet<Product> Product { get; set; }
        public virtual DbSet<ProductCategory> ProductCategory { get; set; }
        public virtual DbSet<ProductManufacture> ProductManufacture { get; set; }
        public virtual DbSet<ProductName> ProductName { get; set; }
        public virtual DbSet<ProductSupplier> ProductSupplier { get; set; }
        public virtual DbSet<Role> Role { get; set; }
        public virtual DbSet<StatusOrder> StatusOrder { get; set; }
        public virtual DbSet<Street> Street { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<Units> Units { get; set; }
        public virtual DbSet<User> User { get; set; }
    }
}