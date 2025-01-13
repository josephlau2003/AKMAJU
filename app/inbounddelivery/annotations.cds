using InteractionService as service from '../../srv/interaction_srv';
annotate service.InboundDeliveries with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'DeliveryID',
                Value : DeliveryID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'product_productID',
                Value : product_productID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PurchaseOrders_id',
                Value : PurchaseOrders_id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'destinationWarehouse_id',
                Value : destinationWarehouse_id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'destinationBin_binID',
                Value : destinationBin_binID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'expectedQuantity',
                Value : expectedQuantity,
            },
            {
                $Type : 'UI.DataField',
                Label : 'EstimatedDeliveryDate',
                Value : EstimatedDeliveryDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'status_statusID',
                Value : status_statusID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'comment',
                Value : comment,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'DeliveryID',
            Value : DeliveryID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'product_productID',
            Value : product_productID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'PurchaseOrders_id',
            Value : PurchaseOrders_id,
        },
        {
            $Type : 'UI.DataField',
            Label : 'destinationWarehouse_id',
            Value : destinationWarehouse_id,
        },
        {
            $Type : 'UI.DataField',
            Label : 'destinationBin_binID',
            Value : destinationBin_binID,
        },
    ],
);

annotate service.InboundDeliveries with {
    product @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Products',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : product_productID,
                ValueListProperty : 'productID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'name',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'description',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'category',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'unitOfMeasure',
            },
        ],
    }
};

annotate service.InboundDeliveries with {
    PurchaseOrders @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'PurchaseOrders',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : PurchaseOrders_id,
                ValueListProperty : 'id',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'supplier',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'orderDate',
            },
        ],
    }
};

annotate service.InboundDeliveries with {
    destinationWarehouse @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Warehouses',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : destinationWarehouse_id,
                ValueListProperty : 'id',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'name',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'location',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'capacity',
            },
        ],
    }
};

annotate service.InboundDeliveries with {
    destinationBin @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Bins',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : destinationBin_binID,
                ValueListProperty : 'binID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'location',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'capacity',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'binType',
            },
        ],
    }
};

annotate service.InboundDeliveries with {
    status @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Status',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : status_statusID,
                ValueListProperty : 'statusID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'description',
            },
        ],
    }
};

