LOVE_VERSION="11.3"
GAME_NAME="WhenTheUnsinableHappens"
GAME_VERSION="1.0"

GAME_FILENAME="release/$GAME_NAME-$GAME_VERSION"

set -e

mkdir -p release

echo
echo
echo "Downloading Love2D..."

wget "https://github.com/love2d/love/releases/download/$LOVE_VERSION/love-$LOVE_VERSION-win64.exe" -O release/love-win64.exe
wget "https://github.com/love2d/love/releases/download/$LOVE_VERSION/love-$LOVE_VERSION-win32.exe" -O release/love-win32.exe
wget "https://github.com/love2d/love/releases/download/$LOVE_VERSION/love-$LOVE_VERSION-linux-x86_64.tar.gz" -O release/love-lin64.tar.gz
wget "https://github.com/love2d/love/releases/download/$LOVE_VERSION/love-$LOVE_VERSION-linux-i686.tar.gz" -O release/love-lin32.tar.gz

echo
echo
echo "Building .love file..."

zip -9 -r "$GAME_FILENAME.love" . -x '*.git*' -x '*release/*' -x '*docs/*'

echo
echo
echo "Building Windows binary..."

cat release/love-win64.exe "$GAME_FILENAME.love" > "$GAME_FILENAME-win64.exe"
cat release/love-win32.exe "$GAME_FILENAME.love" > "$GAME_FILENAME-win32.exe"

echo
echo
echo "Building Linux binary..."

mkdir -p release/love-lin64
tar xzf release/love-lin64.tar.gz -C release/love-lin64/
cp "$GAME_FILENAME.love" release/love-lin64/dest/game.love
sed -i "s#\$@#\${LOVE_LAUNCHER_LOCATION}/game.love#g" release/love-lin64/dest/love
mv release/love-lin64/{dest,$GAME_NAME}
tar czf "release/$GAME_NAME-$GAME_VERSION-linux64.tar.gz" -C release/love-lin64/ $GAME_NAME

mkdir -p release/love-lin32
tar xzf release/love-lin32.tar.gz -C release/love-lin32/
cp "$GAME_FILENAME.love" release/love-lin32/dest/game.love
sed -i "s#\$@#\${LOVE_LAUNCHER_LOCATION}/game.love#g" release/love-lin32/dest/love
mv release/love-lin32/{dest,$GAME_NAME}
tar czf "release/$GAME_NAME-$GAME_VERSION-linux32.tar.gz" -C release/love-lin32/ $GAME_NAME

echo
echo
echo "Done!"

