
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
    
public partial class ShipmentGroupParcel
{

    public long ID { get; set; }

    public long ShipmentGroupID { get; set; }

    public long MemberID { get; set; }

    public long ParcelID { get; set; }

    public Nullable<System.DateTime> ReceivedAtOrigin { get; set; }

    public Nullable<System.DateTime> DispatchedAtDestination { get; set; }

    public Nullable<System.DateTime> DispatchedDomestically { get; set; }

    public System.DateTime Created { get; set; }

    public Nullable<System.DateTime> Deleted { get; set; }



    public virtual Parcel Parcel { get; set; }

    public virtual ShipmentGroup ShipmentGroup { get; set; }

    public virtual User User { get; set; }

}

}
