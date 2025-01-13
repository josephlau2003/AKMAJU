sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'inbounddelivery/test/integration/FirstJourney',
		'inbounddelivery/test/integration/pages/InboundDeliveriesList',
		'inbounddelivery/test/integration/pages/InboundDeliveriesObjectPage'
    ],
    function(JourneyRunner, opaJourney, InboundDeliveriesList, InboundDeliveriesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('inbounddelivery') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheInboundDeliveriesList: InboundDeliveriesList,
					onTheInboundDeliveriesObjectPage: InboundDeliveriesObjectPage
                }
            },
            opaJourney.run
        );
    }
);