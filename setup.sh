clear;
read -p "Enter add-on normal name e.g (Woocommerce, ACF ...) :" name;
read -p "Enter add-on description : " description;
read -p "Enter add-on namespace (Without root e.g. ACF) : " namespace;
url=$(git config --get remote.origin.url);
slug=$(echo "$name" | tr '[:upper:]' '[:lower:]' | tr ' ' '-');

# Name corrections
sed -i "" -e "s|{ Add-on name }|$name|g" distributor-addon-template.php;

# Description correction
sed -i "" -e "s|{ Add-on description }|$description|g" distributor-addon-template.php;

# Description correction
sed -i "" -e "s|{ Add-on repository URI }|$url|g" distributor-addon-template.php;

# Slug corrections
sed -i "" -e "s|{ Add-on slug }|$slug|g" distributor-addon-template.php;
sed -i "" -e "s|{ Add-on slug }|$slug|g" manager.php;
sed -i "" -e "s|{ Add-on slug }|$slug|g" includes/add-on-hub.php;
sed -i "" -e "s|{ Add-on slug }|$slug|g" includes/add-on-spoke.php;

# Namespace correction
sed -i "" -e "s|{ Add - on namespace }|$namespace|g" manager.php;
sed -i "" -e "s|{ Add - on namespace }|$namespace|g" includes/add-on-hub.php;
sed -i "" -e "s|{ Add - on namespace }|$namespace|g" includes/add-on-spoke.php;

mv distributor-addon-template.php "distributor-$slug-addon.php";
mv includes/add-on-hub.php "includes/$slug-hub.php";
mv includes/add-on-spoke.php "includes/$slug-spoke.php";