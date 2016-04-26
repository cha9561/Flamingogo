	function selectmentor(state,btn_id,uid)
	{	
		if($("#"+btn_id).hasClass("add"))
		{

			$.post("/pf/ajax/addmentor.asp", { 
				m:uid
			}, 
			function(data) { 
				if($.trim(data)=="ERR")
				{
					login();
					return;
				}
				alert("멘토로 등록되었습니다.");
				$("#"+btn_id).removeClass("add");
				$("#"+btn_id).html(" - mentor ");

			});



		}
		else
		{
			$.post("/pf/ajax/removementor.asp", { 
				m:uid
			}, 
			function(data) { 
				if($.trim(data)=="ERR")
				{
					login();
					return;
				}
				alert("멘토에서 해제되었습니다.");
				$("#"+btn_id).html(" + mentor ");
				$("#"+btn_id).addClass("add");
			
			});
		}
	}


function clearAll()
{
	$("#msg").val('');
	$("#attType").val('');
	$("#att_map").val('');
	$("#att_guidebook").val('');
	$("#att_route").val('');
	$("#att_link").val('');
	detachMap();
}
 
function writeMSG(ploccode,ptarget)
{
		var v_msg="";
		if($("#msg").val())
			v_msg=$("#msg").val();
		if(v_msg=='글 내용을 입력해주세요.')
			v_msg="";
 
		v_att_type=$("#attachType").val();
		var v_att_value="";

		if($("#att_guidebook").val())
			if(v_att_type=="guidebook")
				v_att_value=$("#att_guidebook").val();
 
		if(v_att_type=="map")
			if($("#att_map").val())
				v_att_value=$("#att_map").val();

		if(v_att_type=="link")
			if($("#att_link").val())
				v_att_value=$("#att_link").val();
		
		if(v_att_type=="doc")
			if($("#att_doc").val())
				v_att_value=$("#att_doc").val();

		if(v_att_type=="route")
			if($("#att_route").val())
				v_att_value=$("#att_route").val();

		if(v_att_type=="plan")
			if($("#att_plan").val())
				v_att_value=$("#att_plan").val();
		pnewsType=$("#newsType").val();

		v_sendtosquare="0";
		if(ptarget=='PLANFEED')
			if($("#sendtosquare").attr('checked'))
				v_sendtosquare="1";
	
		$.post("/ajax/addMSG.asp", { 
			target:ptarget,
			msg: v_msg, 
			attType: v_att_type, 
			attValue: v_att_value, 
			locCode: ploccode,
			newstype:pnewsType,
			sendtosquare:v_sendtosquare
		}, 
		function(data) { 
			if(data=="ERR")
			{
				login();
				return;
			}
			getLogs();
			clearAll();
  	 		
		});
}
function attach()
{
	var val_attachwhat=$("#attachType").val();
	if(val_attachwhat=="map")
	{
		attachMap();
	}
	else if(val_attachwhat=="guidebook")
	{
		attachGuidebook();
	}
 	else if(val_attachwhat=="doc")
	{
		attachDocument();
	}
 
	else if(val_attachwhat=="route")
	{
		attachRoute();
	}
 	else if(val_attachwhat=="img")
	{
		attachImage();
	}
 	else if(val_attachwhat=="plan")
	{
		attachPlan();
	}
 	else if(val_attachwhat=="link")
	{
 		location.href("NewFile.jsp");           // 이동전 주소가 보임
 	
	}
	else if(val_attachwhat=="album")
	{
		alert("앨범페이지 상단에 있는 [광장에 앨범공개] 버튼을 이용해 광장으로 앨범을 포스팅할 수 있습니다.");
	}
  
}
	function closePlan()
	{
		$('#modal-Plan').modal('hide');
		document.getElementById("if_attach_plan").src="about:blank";
	}
	function detachMap()
	{

		$("#att_map_div").slideUp('slow', function() {
			$("#att_map_div").html("");
		})
		$("#v_att_type").val("");	
	}
	function closeMap()
	{
		$('#modal-Map').modal('hide');
		document.getElementById("if_attach_map").src="about:blank";
	}
	function attachedMap(s,lat,lng,zm,mt)
	{
		var v_att_map=lat+"_"+lng+"_"+zm+"_"+mt;
		var v_mt="mobile";
		$("#att_map").val(v_att_map);

		closeMap();
		if(mt)
			v_mt=mt.toLowerCase();

		var img_html="<div style=\"text-align:right\"><img src=\"http://maps.google.com/maps/api/staticmap?maptype="+v_mt+"&markers=color:red|"+lat+","+lng+"&zoom="+zm+"&size=420x155&sensor=false\" width=\"420px\" height=\"155px\"><br><a href=\"javascript:detachMap();\" class=\"small\"><u>지도삭제</u></a></div>";
		$("#att_map_div").html(img_html);
		$("#att_map_div").show("slow");

		$("#att_guidebook").val('');
	}

	function attachedRoute(srcserials,mapurl)
	{

		$("#att_route").val(srcserials);

		closeModal();
		var img_html="<div style=\"text-align:right\"><img src=\""+mapurl+"\" width=\"420px\" height=\"155px\"><br><a href=\"javascript:detachMap();\" class=\"small\"><u>지도삭제</u></a></div>";
		$("#att_map_div").html(img_html);
		$("#att_map_div").show("slow");

		$("#att_guidebook").val('');
	}


	function attachedPlan(planserial,planhtml)
	{

		$("#att_plan").val(planserial);

		closeModal();
		var img_html="<div style=\"text-align:right\">"+planhtml+"<br><a href=\"javascript:detachMap();\" class=\"small\"><u>지도삭제</u></a></div>";
		$("#att_map_div").html(img_html);
		$("#att_map_div").show("slow");

		$("#att_guidebook").val('');
	}
	function attachedLink(v_attval)
	{

		$("#att_link").val(v_attval);
		closeModal();
		$("#att_map_div").html(v_attval);
		$("#att_map_div").show("slow");

		$("#att_guidebook").val('');
	}
	function attachedDocument(v_attval)
	{
		$("#att_doc").val(v_attval);
		closeModal();
		$("#att_map_div").html(v_attval);
		$("#att_map_div").show("slow");

		$("#att_guidebook").val('');

	}
	function attachDocument()
	{
		var v_att_doc=$("#att_doc").val();
		var surl="/plan/getadvice_doc.asp?x=0"

		if(v_att_doc)
		{
			surl=surl+"&ds="+v_att_doc;
		}

		document.getElementById("if_attach_doc").src=surl;
		
		$('#modal-Att-Doc').modal({
			keyboard: true,
			backdrop: 'static',
			show:true
		});

	}
	function closeDocument()
	{
		$('#modal-Att-Doc').modal('hide');
		document.getElementById("if_attach_doc").src="about:blank";
	}
	function attachLink()
	{
		var v_att_link=$("#att_link").val();
		var surl="/plan/getadvice_link.asp?x=0"

		if(v_att_link)
		{
			surl=surl+"&l="+v_att_link;
		}

		document.getElementById("if_attach_link").src=surl;
		
		$('#modal-Link').modal({
			keyboard: true,
			backdrop: 'static',
			show:true
		});

	}
	function attachPlan()
	{
		var p=$("#att_plan").val();

		var surl="/plan/getadvice_plan.asp?c=0";
		if(p)
			surl=surl+"&p="+p;

		

		document.getElementById("if_attach_plan").src=surl;
		
		$('#modal-Plan').modal({
			keyboard: true,
			backdrop: 'static',
			show:true
		});

	}
	function attachMap()
	{
		var s="";
		var c="";

		var v_att_map=$("#att_map").val();
		var surl="/plan/getadvice_map.asp?c="+c

		if(v_att_map)
		{
			arr_att_map=v_att_map.split("_");

			olat=arr_att_map[0].toString();
			olng=arr_att_map[1].toString();
			ozl=arr_att_map[2].toString();
			omt=arr_att_map[3].toString();

			surl=surl+"&lat="+olat+"&lng="+olng+"&zm="+ozl+"&mt="+omt;
		}

		document.getElementById("if_attach_map").src=surl;
		
		$('#modal-Map').modal({
			keyboard: true,
			backdrop: 'static',
			show:true
		});

	}
	function attachRoute()
	{

		var c="";
		var o=$("#att_route").val();

		var surl="/plan/getadvice_route.asp?c="+c;
		if(o)
			surl=surl+"&o="+o;

		

		document.getElementById("if_attach_Route").src=surl;
		
		$('#modal-Att-Route').modal({
			keyboard: true,
			backdrop: 'static',
			show:true
		});

	}
	function attachGuidebook()
	{
		
		var c="";
		
		var o=$("#att_guidebook").val();

		var surl="/plan/getadvice_guide.asp?c="+c;
		if(o)
			surl=surl+"&o="+o;

		document.getElementById("if_attach_Guidebook").src=surl;
		
		$('#modal-Guidebook').modal({
			keyboard: true,
			backdrop: 'static',
			show:true
		});

	}
	function closeGuidebook()
	{
		$('#modal-Guidebook').modal('hide');
		document.getElementById("if_attach_Guidebook").src="about:blank";
	}
	function attachedGuidebook(s,o)
	{
		
	
		$("#att_guidebook").val(o);
	
		$.ajax({
		  url: '../ajax/TransSrcserialsSchd.asp?from=getadvice&ss='+escape(o),
		  success: function(data) {
			nhtml="<div class=\"row\" style=\"margin-left:0px\">"+data+"</div><p style=\"text-align:right\"><a href=\"javascript:detachMap();\" class=\"small\"><u>가이드북 삭제</u></a></p>";
			$("#att_map_div").html(nhtml);
			$("#att_map_div").show("slow");
			$("#att_map").val('');

		  }
		});
		
		closeGuidebook();
	}


function newsTypeChanged()
{
	if($("#newsType").val()=="QNA")
	{
		$("#label_for_write_mentors").show();	
		$("#label_for_write_mentees").hide();
	}
	else if($("#newsType").val()=="INF")
	{
		$("#label_for_write_mentees").show();	
		$("#label_for_write_mentors").hide();
	}
	else
	{
		$("#label_for_write_mentors").hide();
		$("#label_for_write_mentees").hide();
	}

}
