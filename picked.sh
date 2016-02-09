#!/usr/bin/env sh
NAMES="9lessons ManikRathee _arashasghari _hartjeg _shahedk aaroni abecherian abinav_t adellecharles ahmetalpbalkan akifyaldir alexcican alexcwilliams alexmarin alexvanderzon allisongrayce andretacuyan andrewaashen andyvitale angelceballos annapickard arminophen aub azielsilas beacrea beastydesign bellbells benhowdle bmosk9 boheme brad_frost bradmca bramk brynn c_southam calebogden catarino cemshid chadengle claudioguglieri codymclain commadelimited connor_gaunt cristianovalim csswizardry dakshbhagya danbenoni dancounsell dannpetty darrellwhitelaw davidburlton dingyi dotmariusz dustin dustinlamont dwaldron dzyngiri emirik enda engle erondu felipebsb felipenogs flamekaizar florianmascaro flylyf fran6 geekandco geoffrey_crofte glif gt guiiipontes hchicha holdenweb hridoyfaisal hvpandya iam_benn idiot jadlimcaco jamesslock jamiecoulter89 jaredfitch jasongraphix jbrooksuk jessedodds jfkingsley jina jinuem jlantunez jm_denis jodyferry joelbirch47 jonatan jorgebarahona joshaustin joshhemsley jsa justinrhee k kaibrach kastov_yury kerem kevin_granger kfriedson kolage krystynheide kurafire ladylexy leemunroe linclark linkibol lobanovskiy lucaorio_ mackenziechild madebyivor maducao marcosmoralez mathelme mattchevy mattsince87 mehdiayache michzen mijustin mikeluby minipunk mist3r_c0r3 mizko mlane motherfuton mrjohnwalker msurguy mutlu82 neutralthoughts nick_persad nisaanjani nucliweb nuraika nzcode ok oykun perte peterlandt peterme pixeliris pixelmelter preshit putorti rem rgourley ritu robinraszka romeeo80 rosspw rssems ryanbattles sauro seannieuwoudt shalt0ni simobenso sindresorhus soffes sortino soyjavi spiltmilkstudio spjpgrd steno stephane stillnotdavid stylecampaign superjunaid suprb talhaconcepts tdominey teabass teclaro teleject th3ya0vi thaume theastronuts themadray therealmarvin timoni tomaslau tonychester tonypeterson tonystubblebine towhidzaman trek trevoredenton tutvid uxceo vista vladarbatov vocino wiseacre yakimchuk_v yeco zack415 zakiwarfel"

mkdir -p images
for name in $NAMES; do
  curl --silent https://s3.amazonaws.com/uifaces/faces/twitter/$name/128.jpg >images/${name}.jpg &
done

echo "Working..."
wait
echo "Done"
