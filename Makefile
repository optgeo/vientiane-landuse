SRC_PATH = ../virgo-data/20200122_vcc_landuse_final_2015.shp
DST_PATH = vientiane-landuse.pmtiles
LAYER = landuse

all: 
	ogr2ogr -of GeoJSONSeq /vsistdout/ "${SRC_PATH}" |\
	tippecanoe -f -o "${DST_PATH}" --layer="${LAYER}"
	
