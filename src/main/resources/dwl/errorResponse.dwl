%dw 2.0
output application/xml
ns soapenv http://schemas.xmlsoap.org/soap/envelope/
ns sforce http://soap.sforce.com/2005/09/outbound

---
{
  'soapenv:Envelope' @('xmlns:soapenv': "http://schemas.xmlsoap.org/soap/envelope/"): {
    'soapenv:Body': {
      'notificationsResponse' @('xmlns': "http://soap.sforce.com/2005/09/outbound"): {
        Ack: "false"
      }
    }
  }
}
