
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------


namespace DB
{

using System;
    using System.Collections.Generic;
    
public partial class ParcelItem
{

    public long ID { get; set; }

    public long ParcelID { get; set; }

    public long MemberID { get; set; }

    public long ItemID { get; set; }

    public int Quantiy { get; set; }

    public decimal Weight { get; set; }

    public string Description { get; set; }

    public Nullable<long> PictureID { get; set; }

    public System.DateTime Created { get; set; }

    public Nullable<System.DateTime> Deleted { get; set; }



    public virtual Item Item { get; set; }

    public virtual Parcel Parcel { get; set; }

    public virtual Picture Picture { get; set; }

    public virtual User User { get; set; }

}

}
