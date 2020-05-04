for filename in *.pdf; do
echo $filename
   gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4  -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=reduced-$filename $filename
done

for filename in reduced-*.pdf; do
	echo $filename
	new_file="$(echo $filename | cut -d'-' -f2)"
	echo $new_file
	mv $filename $new_file
	sips -s format png --out "${new_file%%.*}.png" "$new_file"
	rm $new_file
done

