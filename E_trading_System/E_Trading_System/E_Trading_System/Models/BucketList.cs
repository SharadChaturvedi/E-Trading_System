//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace E_Trading_System.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class BucketList
    {
        public int Serial_Number { get; set; }
        public Nullable<decimal> Product_Id { get; set; }
        public Nullable<decimal> Customer_Id { get; set; }
    
        public virtual Customer Customer { get; set; }
        public virtual Product Product { get; set; }
    }
}
