%dw 2.0
output application/xml
import * from dw::core::Objects
//ns soapenv http://schemas.xmlsoap.org/soap/envelope/
//ns ntn http://ntnusa.e1.bssv.JP57CPQ1/

ns soapenv "http://schemas.xmlsoap.org/soap/envelope/
ns ntn p('wsdl.namespaces')
---
{
	soapenv#Envelope: {
		soapenv#Header: {
		},
		soapenv#Body: {
			ntn#getPartsDetail: {
				parts:{
					part:  vars."PartId",
					requestQuantity: vars."Qty",
				    shipTo: vars."ShipTo"
			
				}
				
				}
		}
	}
}