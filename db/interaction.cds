namespace app.interactions;

type ProductID      : String(5);      // Format: P000X
type BinID          : String(5);      // Format: B000X
type DeliveryID     : String(6);      // Format: ID00X
type StatusID       : String(10);     // Primary Key for Status Entity
type Quantity       : Integer;
type Comment        : String(500);
type TDate       : DateTime;

// Entity: Status
entity Status {
    key statusID   : StatusID;        // Primary Key, e.g., Pending, Completed
    description    : String(50);      // Description for display purposes
}

// Entity: Bins
entity Bins {
    key binID     : BinID;            // Primary Key

    @UI.Identification: [{ position: 20 }]
    location  : String(50);

    @UI.LineItem: [{ position: 30 }]
    capacity  : Quantity;

    @UI.LineItem: [{ position: 40 }]
    binType   : String(20);           // e.g., Raw Materials, Finished Goods
}

// Entity: Products
entity Products {
    key productID   : ProductID;      // Primary Key
    @UI.LineItem: [{ position: 20 }]
    name        : String(100);
    @UI.LineItem: [{ position: 30 }]
    description : String(500);
    @UI.LineItem: [{ position: 40 }]
    category    : String(50);         // e.g., Electronics, Chemicals
    @UI.LineItem: [{ position: 50 }]
    unitOfMeasure: String(10);        // e.g., kg, pcs
}

// Entity: BinStock
entity BinStock {
    key bin       : Association to Bins;  // Composite Primary Key (bin + product)
    key product   : Association to Products;
    @UI.LineItem: [{ position: 10 }]
    quantity  : Quantity;
    @UI.LineItem: [{ position: 20 }]
    lastUpdated: TDate @UI.DataPoint: { type: #DateTime };
}


// Entity: Warehouses
entity Warehouses {
    key id         : String(70);
    @UI.Identification: [{ position: 10 }]
    name           : String(100);
    @UI.LineItem: [{ position: 20 }]
    location       : String(255);
    @UI.LineItem: [{ position: 30 }]
    capacity       : Integer;
};

// Entity: PurchaseOrders
entity PurchaseOrders {
    key id         : String(70);
    @UI.LineItem: [{ position: 20 }]
    supplier       : String(70);
    @UI.LineItem: [{ position: 20 }]
    orderDate      : TDate;
};


entity InboundDeliveries {
    key DeliveryID        : DeliveryID;

    product          : Association to Products;
    PurchaseOrders          : Association to PurchaseOrders;
    destinationWarehouse : Association to Warehouses; 
    destinationBin : Association to Bins;             

    @UI.LineItem: [{ position: 20 }]
    expectedQuantity: Quantity;

    @UI.LineItem: [{ position: 30 }]
    EstimatedDeliveryDate      : TDate @UI.DataPoint: { type: #DateTime };

    status         : Association to Status;

    @UI.LineItem: [{ position: 50 }]
    comment          : Comment;
    };