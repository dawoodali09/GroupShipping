
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
    
public partial class ShipmentGroup
{

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public ShipmentGroup()
    {

        this.Payments = new HashSet<Payment>();

        this.ShipmentGroupMembers = new HashSet<ShipmentGroupMember>();

        this.ShipmentGroupParcels = new HashSet<ShipmentGroupParcel>();

    }


    public long ID { get; set; }

    public long FacilitatorID { get; set; }

    public long OriginAddressID { get; set; }

    public long DestinataionAddressID { get; set; }

    public int MaximumMembers { get; set; }

    public decimal MaximumWeight { get; set; }

    public decimal TotalODShipmentCost { get; set; }

    public decimal TotalSubShipmentCost { get; set; }

    public decimal AverageDomesticShipmentCost { get; set; }

    public decimal TotalGroupFacilitationFee { get; set; }

    public decimal TotalAppServiceFee { get; set; }

    public Nullable<bool> AppServiceFeeReceived { get; set; }

    public int CurrencyID { get; set; }

    public Nullable<bool> MembersCompleted { get; set; }

    public Nullable<System.DateTime> ParcelReceived { get; set; }

    public Nullable<System.DateTime> ExpectedDispatchTime { get; set; }

    public Nullable<System.DateTime> ParcelDispatched { get; set; }

    public Nullable<System.DateTime> ExpectedArrivalTime { get; set; }

    public Nullable<System.DateTime> ParcelArrived { get; set; }

    public Nullable<System.DateTime> Completed { get; set; }

    public System.DateTime LastUpdated { get; set; }

    public System.DateTime Created { get; set; }

    public Nullable<System.DateTime> Deleted { get; set; }



    public virtual Address Address { get; set; }

    public virtual Address Address1 { get; set; }

    public virtual Currency Currency { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<Payment> Payments { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<ShipmentGroupMember> ShipmentGroupMembers { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<ShipmentGroupParcel> ShipmentGroupParcels { get; set; }

    public virtual User User { get; set; }

}

}
