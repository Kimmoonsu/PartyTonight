login = {

	entrance: function() {

		var query = {
			userName: $('#user_name').val()
		};
		$
			.ajax({
				type: "GET",
				url: "checkLogin",
				data: query,
				dataType: "json",
				success: function(json) {
					var result = json.result;
					if (result == -1) {
						alert("not found user name");
					} else if (result == 1) {
						window.location.replace("card?userName=" + $('#user_name').val());
					}
				}
			});
	}
}
