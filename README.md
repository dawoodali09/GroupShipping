# GroupShipping

**"Let's ship it together."** A web app that lets people pool parcels into
shipment groups to **share delivery costs** — so an individual can get a small
parcel delivered for less by joining others shipping to the same place.

## Tech

- ASP.NET **Web Forms** (C#, .NET Framework)
- **Entity Framework** (Database-First, `DBContext.edmx`) over SQL Server
- Bootstrap (Light Bootstrap Dashboard template)

## Structure

- **DB** — the Entity Framework data layer (`DBContext.edmx`) and entities:
  `User`, `Address`, `Country`, `Currency`, `ShipmentGroup`,
  `ShipmentGroupMember`, `ShipmentGroupParcel`, `Parcel`, `ParcelItem`, `Item`,
  `Payment`, `PaymentMode`, `Picture`.
- **Database** — the database project.
- **GroupShipping** — the Web Forms site: landing (`Default.aspx`),
  `Register.aspx`, `About.aspx`, `Contact.aspx`, with `App_Start` bundling and
  routing and the dashboard theme under `assets/`.

## How it works

A `User` creates or joins a `ShipmentGroup`. Members (`ShipmentGroupMember`)
add `Parcel`s — made up of `Item`s via `ParcelItem` — to the group
(`ShipmentGroupParcel`) and settle up through `Payment` / `PaymentMode`.
Addresses, countries and currencies support international shipments.

## Getting started

Open the solution in Visual Studio, point the EF connection string (in the web
app's `Web.config`) at your SQL Server, create the schema from the model, and run.

## Status

An early project kept for reference.
