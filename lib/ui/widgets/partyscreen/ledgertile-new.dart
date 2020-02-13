
import 'package:flutter/material.dart';
import 'package:tassist/core/models/ledger.dart';
import 'package:intl/intl.dart';
import 'package:tassist/ui/widgets/childdetailcard.dart';
import 'package:tassist/ui/widgets/detailcard.dart';

import 'package:tassist/ui/widgets/partyscreen/ledgercard.dart';

var formatter = new DateFormat('dd-MM-yyyy');
// TODO
var numberFormatter = new NumberFormat('##,##,##,##,###.##', "en_US");


class LedgerItemTileNew  extends StatelessWidget {

  final LedgerItem ledgerItem;
  
  LedgerItemTileNew({this.ledgerItem});


  @override
  Widget build(BuildContext context) {


  if (ledgerItem.primaryGroupType == 'Sundry Debtors')  {
     return LedgerCard(childdetailCard: ChildDetailCard(ledgerItem.name, 
    '# ${ledgerItem.masterId}',
     ledgerItem.state, 
     'Rs ${ledgerItem.closingBalance}', 
     'Rs. ${ledgerItem.openingBalance}'),
      title1: 'Receivables', 
      info1: ledgerItem.totalReceivables, 
      title2: 'Last Sale ', 
      info2: ledgerItem.lastSalesDate, 
      title3: 'Last Receipt', info3: ledgerItem.lastReceiptDate,
      title4: 'Last Price Sold', info4: 'Coming Soon!',
      ledgerItem: ledgerItem,);
  }
  else {

  if (ledgerItem.primaryGroupType == 'Sundry Creditors') {
     return LedgerCard(childdetailCard: ChildDetailCard(ledgerItem.name, 
    '# ${ledgerItem.masterId}',
     ledgerItem.state, 
     'Rs ${ledgerItem.closingBalance}', 
     'Rs. ${ledgerItem.openingBalance}'),
        title1: 'Payables', 
      info1: ledgerItem.totalPayables, 
      title2: 'Last Purchase ', 
      info2: ledgerItem.lastPurchaseDate, 
      title3: 'Last Payment', info3: ledgerItem.lastPaymentDate,
      title4: 'Last Price Bought', info4: 'Coming Soon!',
      ledgerItem: ledgerItem,);
    

  }
  else {
    return DetailCard(ledgerItem.name, 
    '# ${ledgerItem.masterId}',
     ledgerItem.primaryGroupType, 
     'Rs ${ledgerItem.closingBalance}', 
     'Rs. ${ledgerItem.openingBalance}');

  }
  }
}
}