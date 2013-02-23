var url = "";
var columns = [];
var seriesData = [];
var page_id = '';

function startChart(id)
{
    page_id = id;
    
    $.get('datasets.xml', null, function (data, textStatus) {
        url = getXMLValue('url', data);
        var subtitle = getXMLValue('chart subtitle', data);
        var title = getXMLValue('chart title', data);
        var y_title = "Production";
        
        var ds = new Miso.Dataset({
          url : url,
          delimiter : ",",
          columns : [
            { name : "Year", type : "time", format : "YYYY" }
          ]
        });

        ds.fetch({
          success : function() {
            this.eachColumn(function(colName, colObject, index) {
                if(colName != "Year")
                {
                    seriesData[seriesData.length] = {
                        name: colName,
                        data: this.column(colName).data
                    }
                }
            });
            chart = new Highcharts.Chart({
              chart: {
                renderTo: 'lineChartContainer',
                type: 'line',
                marginRight: 130,
                marginBottom: 25
              },
              title: {
                text: title,
                x: -20 //center
              },
              subtitle: {
                text: subtitle,
                x: -20
              },
              xAxis: {
                categories: _.map(this.column("Year").data, function(year) { 
                  return year.format("YY"); 
                })
              },
              yAxis: {
                title: {
                  text: y_title
                },
                plotLines: [{
                  value: 0,
                  width: 10000,
                  color: '#c0c0c0'
                }]
              },
              tooltip: {
                formatter: function() {
                  return '<b>'+ this.series.name +'</b><br/>'+
                  this.x +': '+ this.y;
                }
              },
              legend: {
                  layout: 'vertical',
                  align: 'right',
                  verticalAlign: 'top',
                  x: -10,
                  y: 100,
                  borderWidth: 0
              },
              series: seriesData
            });
          }
    });
    }, 'xml')
}

function getXMLValue(field, data)
{
    return $(data).find('datasets dataset[id=' + page_id + '] ' + field).text();
}
