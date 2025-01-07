%dw 2.0
output application/json
var branchQuantitiesArray = vars.consumerResponse.body.getPartsDetailResponse.partDetails.*"branchQuantities" 
var partDetails = vars.consumerResponse.body.getPartsDetailResponse.partDetails - "branchQuantities"
var excessFileds = vars.consumerResponse.body.getPartsDetailResponse - "partDetails"      
---
{
    "responseDetailParts" : excessFileds ++ {
         
        "partDetails" : [partDetails ++ "branchQuantities": branchQuantitiesArray],
         
        }
    
}
