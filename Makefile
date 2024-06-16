SRC_URL = https://optgeo.github.io/virgo-data/20200122_vcc_landuse_final_2015.shp
DST_PATH = vientiane-landuse.pmtiles
LAYER = landuse

all: 
	SHAPE_RESTORE_SHX=YES ogr2ogr -of GeoJSONSeq /vsistdout/ "${SRC_URL}"
	