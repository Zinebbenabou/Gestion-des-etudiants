read -p "w ur folder-name " foldername

mkdir $foldername
cd $foldername

read -p "do you want to install bootstrap: yes/no "
if [ $REPLY = "yes" ]; then
    npm install bootstrap
fi


read -p "do you want to install bootstrap icons: yes/no "
if [ $REPLY = "yes" ]; then
    npm i bootstrap-icons
fi
mkdir -p ./public/{images,css,pages,js}
touch index.html
mkdir -p ./src/sass
touch ./src/sass/app.sass
touch ./public/css/app.css
touch ./public/js/app.js
mkdir ./src/sass/modules
touch ./src/sass/_allmodules.sass
touch ./src/sass/_variables.sass
mkdir ./src/sass/modules/home
touch ./src/sass/modules/home/_header.sass


echo '<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./public/css/app.css">
</head>
<body>
    
    <script src="./node_modules/bootstrap/dist/js/bootstrap.bundle.js"></script>
    <script src="./public/js/app.js"></script>

</body>
</html>' > ./index.html


echo '*{
    padding: 0;
    margin: 0;
}' > ./public/css/app.css

echo '@import ./_variables.sass
@import ../../node_modules/bootstrap/scss/bootstrap.scss
@import ../../node_modules/bootstrap-icons/font/bootstrap-icons.css
@import ./_allmodules.sass' > ./src/sass/app.sass

echo '@import ./modules/home/_header.sass' > ./src/sass/_allmodules.sass
echo '@import ../../node_modules/bootstrap/scss/functions
@import ../../node_modules/bootstrap/scss/variables' > ./src/sass/_variables.sass
