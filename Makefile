all: modularize-script minify-script copy-styles rename-styles

include ../../build/modules.mk

MODULE = nouislider
SOURCE_SCRIPT_FOLDER = distribute
SOURCE_SCRIPT_FILE_NAME = nouislider.all
SOURCE_STYLE_FOLDER = src
SOURCE_STYLE_FILES = nouislider \
	nouislider.pips
CSS_FILE_SUFFIX_UNCOMPRESSED = .less

rename-styles:
	mv ${TARGET_STYLE_FOLDER}/nouislider.less ${TARGET_STYLE_FOLDER}/default.less
	mv ${TARGET_STYLE_FOLDER}/nouislider.pips.less ${TARGET_STYLE_FOLDER}/pips.less
