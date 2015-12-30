$(function(){
	getAnalyticsData();
});

function getAnalyticsData(){
	if (('.post-views').count > 0){
		return;
	}
	$.ajax({
		url: 'https://garys-zone.appspot.com/query?id=agxzfmdhcnlzLXpvbmVyFQsSCEFwaVF1ZXJ5GICAgICAgIAKDA',
		dataType: 'jsonp',
		timeout: 1000 * 3,
		success: function(data){
			processPageView(data.rows);
		},
		error: function(){
			console.log('Failed to get page view from Google App Engine.');
		}

	});
}


function processPageView(dataRows){
	if (dataRows === undefined){
		return;
	}

	$('.post-title').each(function(){
		var link = $(this).attr('data-link');
		if (link){
			var len = dataRows.length;
			for (var i = 0; i < len; i++) {
				if (dataRows[i][0] === link){
					console.log(dataRows[i]);
					$(this).siblings('.post-meta').append('<div class="post-views"><span class="fa fa fa-eye"></span> ' + dataRows[i][1] + ' views</div>');
				}
			}
		}
	});
}