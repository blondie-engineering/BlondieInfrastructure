'use strict';
var AWS = require("aws-sdk");

exports.handler = (event, context, callback) => {
    event.Records.forEach((record) => {
        console.log('Stream record: ', JSON.stringify(record, null, 2));
        if (record.eventName == 'INSERT') {
            var who = JSON.stringify(record.dynamodb.Campaigns.company.S);
            var when = JSON.stringify(record.dynamodb.Campaigns.transaction_date.S);
            var what = JSON.stringify(record.dynamodb.Campaigns.amount.N);
            var xhr = new XMLHttpRequest();
            xhr.open("POST", process.env.QLDB_ENDPOINT, true);
            xhr.setRequestHeader('Content-Type', 'application/json');
            xhr.send(JSON.stringify({
               company,
               transaction_date,
               amount
            }));
        }
    });
    callback(null, `Successfully processed ${event.Records.length} records.`);
};   
