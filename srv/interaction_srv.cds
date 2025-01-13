using app.interactions from '../db/interaction';
using {sap} from '@sap/cds-common-content';

service InteractionService {

    // Enabling draft for managing inbound deliveries
    @odata.draft.enabled: true
    entity InboundDeliveries as projection on interactions.InboundDeliveries;

    // Exposing Bins entity for bin management
    entity Bins as projection on interactions.Bins;

    // Exposing Products entity for product management
    entity Products as projection on interactions.Products;

    // Exposing Status entity for managing delivery statuses
    entity Status as projection on interactions.Status;

    // Optional: Expose BinStock for stock levels
    entity BinStock as projection on interactions.BinStock;

    // Exposing Warehouses entity for warehouse management
    entity Warehouses as projection on interactions.Warehouses;

    // Exposing PurchaseOrders entity for purchase order management
    entity PurchaseOrders as projection on interactions.PurchaseOrders;

    // Optional: Languages for value help or localization
    @readonly
    entity Languages as projection on sap.common.Languages;

    // Actions for managing inbound deliveries
    action addInboundDelivery(
        DeliveryID: String(6),
        productID: String(5),
        PurchaseOrderID: String(70),
        destinationWarehouseID: String(70),
        destinationBinID: String(5),
        expectedQuantity: Integer,
        EstimatedDeliveryDate: DateTime,
        statusID: String(10),
        comment: String(500)
    ) returns String;

    action deleteInboundDelivery(
        DeliveryID: String(6)
    ) returns String;

    action modifyInboundDelivery(
        DeliveryID: String(6),
        expectedQuantity: Integer,
        EstimatedDeliveryDate: DateTime,
        statusID: String(10),
        comment: String(500)
    ) returns String;
}