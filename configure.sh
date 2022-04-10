#! /usr/bin/env sh
#cmake -B build -S . --toolchain "./cmake/llvm-macos-aarch64.cmake" -D VNC=OFF -D NEW_DYNAREC=ON -D QT=ON  --install-prefix /Users/$USER/Developer/86Box/build/src/ -DCMAKE_BUILD_TYPE=Release -G Ninja -DFAUDIO=ON and cmake --build build --target install && codesign --force --deep -s - ./build/src/86Box.app 

cmake -B build -S . --toolchain "./cmake/llvm-macos-aarch64.cmake" \
-D VNC=OFF -D NEW_DYNAREC=ON -D QT=ON -D USE_QT6=ON \
-D Qt6QCocoaIntegrationPlugin_DIR=/opt/homebrew/Cellar/qt/6.2.3_1/lib/cmake/Qt6Gui \
-D Qt6QMacStylePlugin_DIR=/opt/homebrew/Cellar/qt/6.2.3_1/lib/cmake/Qt6Widgets \
-D Qt6QICOPlugin_DIR=/opt/homebrew/Cellar/qt/6.2.3_1/lib/cmake/Qt6Gui \
-D Qt6QICNSPlugin_DIR=/opt/homebrew/Cellar/qt/6.2.3_1/lib/cmake/Qt6Gui \
--install-prefix /Users/$USER/Developer/86Box/build/src/ -DCMAKE_BUILD_TYPE=Release -G Ninja -DFAUDIO=ON
# -D CMAKE_PREFIX_PATH=/opt/homebrew/Cellar/qt/6.2.3_1/lib/cmake \
# -D CMAKE_PREFIX_DIR=/opt/homebrew/Cellar/qt@5/5.15.3/lib/cmake/Qt5:/opt/homebrew/Cellar/qt@5/5.15.3/lib/cmake/Qt5LinguistTools \
