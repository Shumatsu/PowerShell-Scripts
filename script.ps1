$i = 0
$pad = 3
$images = Get-ChildItem -Path *.jpg
if($images.Length>$pad){ $pad = $images.Length}

$images | %{Rename-Item $_ -NewName ('{0:D3}.jpg' -f $i++)}