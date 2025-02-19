

CREATE TABLE "ArgolightBDistanceKeyValues" (
	"channel_A" INTEGER, 
	"channel_B" INTEGER, 
	mean_3d_dist FLOAT, 
	median_3d_dist FLOAT, 
	std_3d_dist FLOAT, 
	mad_3d_dist FLOAT, 
	mean_z_dist FLOAT, 
	median_z_dist FLOAT, 
	std_z_dist FLOAT, 
	mad_z_dist FLOAT, 
	PRIMARY KEY ("channel_A", "channel_B", mean_3d_dist, median_3d_dist, std_3d_dist, mad_3d_dist, mean_z_dist, median_z_dist, std_z_dist, mad_z_dist)
);

CREATE TABLE "ArgolightBIntensityKeyValues" (
	channel INTEGER, 
	nr_of_spots INTEGER, 
	intensity_max_spot FLOAT, 
	intensity_max_spot_roi INTEGER, 
	intensity_min_spot FLOAT, 
	intensity_min_spot_roi INTEGER, 
	mean_intensity FLOAT, 
	median_intensity FLOAT, 
	std_mean_intensity FLOAT, 
	mad_mean_intensity FLOAT, 
	min_max_intensity_ratio FLOAT, 
	PRIMARY KEY (channel, nr_of_spots, intensity_max_spot, intensity_max_spot_roi, intensity_min_spot, intensity_min_spot_roi, mean_intensity, median_intensity, std_mean_intensity, mad_mean_intensity, min_max_intensity_ratio)
);

CREATE TABLE "ArgolightEKeyValues" (
	channel INTEGER, 
	focus_slice INTEGER, 
	rayleigh_resolution FLOAT, 
	"peak_position_A" FLOAT, 
	"peak_position_B" FLOAT, 
	"peak_height_A" FLOAT, 
	"peak_height_B" FLOAT, 
	"peak_prominence_A" FLOAT, 
	"peak_prominence_B" FLOAT, 
	PRIMARY KEY (channel, focus_slice, rayleigh_resolution, "peak_position_A", "peak_position_B", "peak_height_A", "peak_height_B", "peak_prominence_A", "peak_prominence_B")
);

CREATE TABLE "ArgolightEOutput" (
	peaks_rois TEXT, 
	key_measurements TEXT, 
	intensity_profiles TEXT, 
	PRIMARY KEY (peaks_rois, key_measurements, intensity_profiles)
);

CREATE TABLE "Channel" (
	name TEXT, 
	description TEXT, 
	excitation_wavelength_nm FLOAT, 
	emission_wavelength_nm FLOAT, 
	PRIMARY KEY (name, description, excitation_wavelength_nm, emission_wavelength_nm)
);

CREATE TABLE "ChannelSeries" (
	"values" TEXT NOT NULL, 
	PRIMARY KEY ("values")
);

CREATE TABLE "Color" (
	r INTEGER NOT NULL, 
	g INTEGER NOT NULL, 
	b INTEGER NOT NULL, 
	alpha INTEGER, 
	PRIMARY KEY (r, g, b, alpha)
);

CREATE TABLE "Column" (
	name TEXT NOT NULL, 
	PRIMARY KEY (name)
);

CREATE TABLE "Comment" (
	date DATE NOT NULL, 
	comment_type VARCHAR(11), 
	text TEXT NOT NULL, 
	PRIMARY KEY (date, comment_type, text)
);

CREATE TABLE "Ellipse" (
	label TEXT NOT NULL, 
	z FLOAT, 
	c INTEGER, 
	t INTEGER, 
	fill_color TEXT, 
	stroke_color TEXT, 
	stroke_width INTEGER, 
	x FLOAT NOT NULL, 
	y FLOAT NOT NULL, 
	x_rad FLOAT NOT NULL, 
	y_rad FLOAT NOT NULL, 
	PRIMARY KEY (label)
);

CREATE TABLE "Experimenter" (
	name TEXT NOT NULL, 
	orcid TEXT NOT NULL, 
	PRIMARY KEY (orcid)
);

CREATE TABLE "FieldIlluminationKeyValues" (
	channel INTEGER, 
	nb_pixels INTEGER, 
	center_of_mass_x FLOAT, 
	center_of_mass_y FLOAT, 
	max_intensity FLOAT, 
	max_intensity_pos_x FLOAT, 
	max_intensity_pos_y FLOAT, 
	top_left_intensity_mean FLOAT, 
	top_left_intensity_ratio FLOAT, 
	top_center_intensity_mean FLOAT, 
	top_center_intensity_ratio FLOAT, 
	top_right_intensity_mean FLOAT, 
	top_right_intensity_ratio FLOAT, 
	middle_left_intensity_mean FLOAT, 
	middle_left_intensity_ratio FLOAT, 
	middle_center_intensity_mean FLOAT, 
	middle_center_intensity_ratio FLOAT, 
	middle_right_intensity_mean FLOAT, 
	middle_right_intensity_ratio FLOAT, 
	bottom_left_intensity_mean FLOAT, 
	bottom_left_intensity_ratio FLOAT, 
	bottom_center_intensity_mean FLOAT, 
	bottom_center_intensity_ratio FLOAT, 
	bottom_right_intensity_mean FLOAT, 
	bottom_right_intensity_ratio FLOAT, 
	decile_0 FLOAT, 
	decile_1 FLOAT, 
	decile_2 FLOAT, 
	decile_3 FLOAT, 
	decile_4 FLOAT, 
	decile_5 FLOAT, 
	decile_6 FLOAT, 
	decile_7 FLOAT, 
	decile_8 FLOAT, 
	decile_9 FLOAT, 
	PRIMARY KEY (channel, nb_pixels, center_of_mass_x, center_of_mass_y, max_intensity, max_intensity_pos_x, max_intensity_pos_y, top_left_intensity_mean, top_left_intensity_ratio, top_center_intensity_mean, top_center_intensity_ratio, top_right_intensity_mean, top_right_intensity_ratio, middle_left_intensity_mean, middle_left_intensity_ratio, middle_center_intensity_mean, middle_center_intensity_ratio, middle_right_intensity_mean, middle_right_intensity_ratio, bottom_left_intensity_mean, bottom_left_intensity_ratio, bottom_center_intensity_mean, bottom_center_intensity_ratio, bottom_right_intensity_mean, bottom_right_intensity_ratio, decile_0, decile_1, decile_2, decile_3, decile_4, decile_5, decile_6, decile_7, decile_8, decile_9)
);

CREATE TABLE "Image2D" (
	name TEXT, 
	description TEXT, 
	image_url TEXT NOT NULL, 
	voxel_size_x_micron FLOAT, 
	voxel_size_y_micron FLOAT, 
	voxel_size_z_micron FLOAT, 
	shape_x INTEGER NOT NULL, 
	shape_y INTEGER NOT NULL, 
	shape_z INTEGER NOT NULL, 
	shape_c INTEGER NOT NULL, 
	shape_t INTEGER NOT NULL, 
	PRIMARY KEY (image_url)
);

CREATE TABLE "Image5D" (
	name TEXT, 
	description TEXT, 
	image_url TEXT NOT NULL, 
	voxel_size_x_micron FLOAT, 
	voxel_size_y_micron FLOAT, 
	voxel_size_z_micron FLOAT, 
	shape_x INTEGER NOT NULL, 
	shape_y INTEGER NOT NULL, 
	shape_z INTEGER NOT NULL, 
	shape_c INTEGER NOT NULL, 
	shape_t INTEGER NOT NULL, 
	time_series TEXT, 
	channel_series TEXT, 
	PRIMARY KEY (image_url)
);

CREATE TABLE "ImageAsNumpy" (
	name TEXT, 
	description TEXT, 
	image_url TEXT NOT NULL, 
	voxel_size_x_micron FLOAT, 
	voxel_size_y_micron FLOAT, 
	voxel_size_z_micron FLOAT, 
	shape_x INTEGER NOT NULL, 
	shape_y INTEGER NOT NULL, 
	shape_z INTEGER NOT NULL, 
	shape_c INTEGER NOT NULL, 
	shape_t INTEGER NOT NULL, 
	data TEXT, 
	PRIMARY KEY (image_url)
);

CREATE TABLE "ImageMask" (
	name TEXT, 
	description TEXT, 
	image_url TEXT NOT NULL, 
	voxel_size_x_micron FLOAT, 
	voxel_size_y_micron FLOAT, 
	voxel_size_z_micron FLOAT, 
	shape_x INTEGER NOT NULL, 
	shape_y INTEGER NOT NULL, 
	shape_z INTEGER NOT NULL, 
	shape_c INTEGER NOT NULL, 
	shape_t INTEGER NOT NULL, 
	PRIMARY KEY (image_url)
);

CREATE TABLE "Line" (
	label TEXT NOT NULL, 
	z FLOAT, 
	c INTEGER, 
	t INTEGER, 
	fill_color TEXT, 
	stroke_color TEXT, 
	stroke_width INTEGER, 
	x1 FLOAT NOT NULL, 
	y1 FLOAT NOT NULL, 
	x2 FLOAT NOT NULL, 
	y2 FLOAT NOT NULL, 
	PRIMARY KEY (label)
);

CREATE TABLE "LinesRoi" (
	label TEXT NOT NULL, 
	description TEXT, 
	shapes TEXT, 
	PRIMARY KEY (label)
);

CREATE TABLE "Point" (
	label TEXT NOT NULL, 
	z FLOAT, 
	c INTEGER, 
	t INTEGER, 
	fill_color TEXT, 
	stroke_color TEXT, 
	stroke_width INTEGER, 
	y FLOAT NOT NULL, 
	x FLOAT NOT NULL, 
	PRIMARY KEY (label)
);

CREATE TABLE "PointsRoi" (
	label TEXT NOT NULL, 
	description TEXT, 
	shapes TEXT, 
	PRIMARY KEY (label)
);

CREATE TABLE "Polygon" (
	label TEXT NOT NULL, 
	z FLOAT, 
	c INTEGER, 
	t INTEGER, 
	fill_color TEXT, 
	stroke_color TEXT, 
	stroke_width INTEGER, 
	is_open BOOLEAN NOT NULL, 
	PRIMARY KEY (label)
);

CREATE TABLE "Protocol" (
	name TEXT, 
	description TEXT, 
	version TEXT NOT NULL, 
	authors TEXT, 
	url TEXT NOT NULL, 
	PRIMARY KEY (url)
);

CREATE TABLE "Rectangle" (
	label TEXT NOT NULL, 
	z FLOAT, 
	c INTEGER, 
	t INTEGER, 
	fill_color TEXT, 
	stroke_color TEXT, 
	stroke_width INTEGER, 
	x FLOAT NOT NULL, 
	y FLOAT NOT NULL, 
	w FLOAT NOT NULL, 
	h FLOAT NOT NULL, 
	PRIMARY KEY (label)
);

CREATE TABLE "RectanglesRoi" (
	label TEXT NOT NULL, 
	description TEXT, 
	shapes TEXT, 
	PRIMARY KEY (label)
);

CREATE TABLE "Roi" (
	label TEXT NOT NULL, 
	description TEXT, 
	PRIMARY KEY (label)
);

CREATE TABLE "RoiCenter" (
	label TEXT NOT NULL, 
	description TEXT, 
	center_points TEXT, 
	PRIMARY KEY (label)
);

CREATE TABLE "TableAsPandasDF" (
	name TEXT, 
	description TEXT, 
	df TEXT NOT NULL, 
	PRIMARY KEY (name, description, df)
);

CREATE TABLE "TimeSeries" (
	"values" FLOAT NOT NULL, 
	PRIMARY KEY ("values")
);

CREATE TABLE "ArgolightBInput" (
	argolight_b_image TEXT NOT NULL, 
	bit_depth INTEGER, 
	saturation_threshold FLOAT NOT NULL, 
	spots_distance FLOAT NOT NULL, 
	sigma_z FLOAT NOT NULL, 
	sigma_y FLOAT NOT NULL, 
	sigma_x FLOAT NOT NULL, 
	lower_threshold_correction_factors FLOAT, 
	upper_threshold_correction_factors FLOAT, 
	remove_center_cross BOOLEAN, 
	PRIMARY KEY (argolight_b_image, bit_depth, saturation_threshold, spots_distance, sigma_z, sigma_y, sigma_x, lower_threshold_correction_factors, upper_threshold_correction_factors, remove_center_cross), 
	FOREIGN KEY(argolight_b_image) REFERENCES "ImageAsNumpy" (image_url)
);

CREATE TABLE "ArgolightBOutput" (
	spots_labels_image TEXT, 
	spots_centroids TEXT, 
	intensity_measurements TEXT, 
	distance_measurements TEXT, 
	spots_properties TEXT, 
	spots_distances TEXT, 
	PRIMARY KEY (spots_labels_image, spots_centroids, intensity_measurements, distance_measurements, spots_properties, spots_distances), 
	FOREIGN KEY(spots_labels_image) REFERENCES "ImageAsNumpy" (image_url)
);

CREATE TABLE "ArgolightEInput" (
	argolight_e_image TEXT NOT NULL, 
	bit_depth INTEGER, 
	saturation_threshold FLOAT NOT NULL, 
	axis INTEGER NOT NULL, 
	measured_band FLOAT NOT NULL, 
	prominence_threshold FLOAT NOT NULL, 
	PRIMARY KEY (argolight_e_image, bit_depth, saturation_threshold, axis, measured_band, prominence_threshold), 
	FOREIGN KEY(argolight_e_image) REFERENCES "ImageAsNumpy" (image_url)
);

CREATE TABLE "FieldIlluminationInput" (
	field_illumination_image TEXT NOT NULL, 
	bit_depth INTEGER, 
	saturation_threshold FLOAT NOT NULL, 
	center_threshold FLOAT NOT NULL, 
	corner_fraction FLOAT NOT NULL, 
	sigma FLOAT NOT NULL, 
	intensity_map_size INTEGER NOT NULL, 
	PRIMARY KEY (field_illumination_image, bit_depth, saturation_threshold, center_threshold, corner_fraction, sigma, intensity_map_size), 
	FOREIGN KEY(field_illumination_image) REFERENCES "ImageAsNumpy" (image_url)
);

CREATE TABLE "FieldIlluminationOutput" (
	key_values TEXT, 
	intensity_profiles TEXT, 
	intensity_map TEXT, 
	profile_rois TEXT, 
	corner_rois TEXT, 
	center_of_illumination TEXT, 
	PRIMARY KEY (key_values, intensity_profiles, intensity_map, profile_rois, corner_rois, center_of_illumination), 
	FOREIGN KEY(intensity_map) REFERENCES "Image5D" (image_url), 
	FOREIGN KEY(profile_rois) REFERENCES "LinesRoi" (label), 
	FOREIGN KEY(corner_rois) REFERENCES "RectanglesRoi" (label), 
	FOREIGN KEY(center_of_illumination) REFERENCES "PointsRoi" (label)
);

CREATE TABLE "Mask" (
	label TEXT NOT NULL, 
	z FLOAT, 
	c INTEGER, 
	t INTEGER, 
	fill_color TEXT, 
	stroke_color TEXT, 
	stroke_width INTEGER, 
	y INTEGER NOT NULL, 
	x INTEGER NOT NULL, 
	mask TEXT, 
	PRIMARY KEY (label), 
	FOREIGN KEY(mask) REFERENCES "ImageMask" (image_url)
);

CREATE TABLE "RoiCorners" (
	label TEXT NOT NULL, 
	description TEXT, 
	shapes TEXT, 
	top_left_region TEXT, 
	top_center_region TEXT, 
	top_right_region TEXT, 
	middle_left_region TEXT, 
	middle_center_region TEXT, 
	middle_right_region TEXT, 
	bottom_left_region TEXT, 
	bottom_center_region TEXT, 
	bottom_right_region TEXT, 
	PRIMARY KEY (label), 
	FOREIGN KEY(top_left_region) REFERENCES "Rectangle" (label), 
	FOREIGN KEY(top_center_region) REFERENCES "Rectangle" (label), 
	FOREIGN KEY(top_right_region) REFERENCES "Rectangle" (label), 
	FOREIGN KEY(middle_left_region) REFERENCES "Rectangle" (label), 
	FOREIGN KEY(middle_center_region) REFERENCES "Rectangle" (label), 
	FOREIGN KEY(middle_right_region) REFERENCES "Rectangle" (label), 
	FOREIGN KEY(bottom_left_region) REFERENCES "Rectangle" (label), 
	FOREIGN KEY(bottom_center_region) REFERENCES "Rectangle" (label), 
	FOREIGN KEY(bottom_right_region) REFERENCES "Rectangle" (label)
);

CREATE TABLE "RoiProfiles" (
	label TEXT NOT NULL, 
	description TEXT, 
	shapes TEXT, 
	"leftTop_to_rightBottom_profile" TEXT, 
	"leftBottom_to_rightTop_profile" TEXT, 
	left_to_right_profile TEXT, 
	top_to_bottom_profile TEXT, 
	PRIMARY KEY (label), 
	FOREIGN KEY("leftTop_to_rightBottom_profile") REFERENCES "Line" (label), 
	FOREIGN KEY("leftBottom_to_rightTop_profile") REFERENCES "Line" (label), 
	FOREIGN KEY(left_to_right_profile) REFERENCES "Line" (label), 
	FOREIGN KEY(top_to_bottom_profile) REFERENCES "Line" (label)
);

CREATE TABLE "Sample" (
	name TEXT, 
	description TEXT, 
	type TEXT NOT NULL, 
	protocol TEXT NOT NULL, 
	PRIMARY KEY (type), 
	FOREIGN KEY(protocol) REFERENCES "Protocol" (url)
);

CREATE TABLE "Vertex" (
	x FLOAT NOT NULL, 
	y FLOAT NOT NULL, 
	"Polygon_label" TEXT, 
	PRIMARY KEY (x, y, "Polygon_label"), 
	FOREIGN KEY("Polygon_label") REFERENCES "Polygon" (label)
);

CREATE TABLE "Column_values" (
	backref_id TEXT, 
	"values" TEXT NOT NULL, 
	PRIMARY KEY (backref_id, "values"), 
	FOREIGN KEY(backref_id) REFERENCES "Column" (name)
);

CREATE TABLE "Image2D_source_image_url" (
	backref_id TEXT, 
	source_image_url TEXT, 
	PRIMARY KEY (backref_id, source_image_url), 
	FOREIGN KEY(backref_id) REFERENCES "Image2D" (image_url)
);

CREATE TABLE "Image2D_data" (
	backref_id TEXT, 
	data FLOAT NOT NULL, 
	PRIMARY KEY (backref_id, data), 
	FOREIGN KEY(backref_id) REFERENCES "Image2D" (image_url)
);

CREATE TABLE "Image5D_source_image_url" (
	backref_id TEXT, 
	source_image_url TEXT, 
	PRIMARY KEY (backref_id, source_image_url), 
	FOREIGN KEY(backref_id) REFERENCES "Image5D" (image_url)
);

CREATE TABLE "Image5D_data" (
	backref_id TEXT, 
	data FLOAT NOT NULL, 
	PRIMARY KEY (backref_id, data), 
	FOREIGN KEY(backref_id) REFERENCES "Image5D" (image_url)
);

CREATE TABLE "ImageAsNumpy_source_image_url" (
	backref_id TEXT, 
	source_image_url TEXT, 
	PRIMARY KEY (backref_id, source_image_url), 
	FOREIGN KEY(backref_id) REFERENCES "ImageAsNumpy" (image_url)
);

CREATE TABLE "ImageMask_source_image_url" (
	backref_id TEXT, 
	source_image_url TEXT, 
	PRIMARY KEY (backref_id, source_image_url), 
	FOREIGN KEY(backref_id) REFERENCES "ImageMask" (image_url)
);

CREATE TABLE "ImageMask_data" (
	backref_id TEXT, 
	data BOOLEAN NOT NULL, 
	PRIMARY KEY (backref_id, data), 
	FOREIGN KEY(backref_id) REFERENCES "ImageMask" (image_url)
);

CREATE TABLE "LinesRoi_image" (
	backref_id TEXT, 
	image TEXT, 
	PRIMARY KEY (backref_id, image), 
	FOREIGN KEY(backref_id) REFERENCES "LinesRoi" (label)
);

CREATE TABLE "PointsRoi_image" (
	backref_id TEXT, 
	image TEXT, 
	PRIMARY KEY (backref_id, image), 
	FOREIGN KEY(backref_id) REFERENCES "PointsRoi" (label)
);

CREATE TABLE "RectanglesRoi_image" (
	backref_id TEXT, 
	image TEXT, 
	PRIMARY KEY (backref_id, image), 
	FOREIGN KEY(backref_id) REFERENCES "RectanglesRoi" (label)
);

CREATE TABLE "Roi_image" (
	backref_id TEXT, 
	image TEXT, 
	PRIMARY KEY (backref_id, image), 
	FOREIGN KEY(backref_id) REFERENCES "Roi" (label)
);

CREATE TABLE "Roi_shapes" (
	backref_id TEXT, 
	shapes TEXT, 
	PRIMARY KEY (backref_id, shapes), 
	FOREIGN KEY(backref_id) REFERENCES "Roi" (label)
);

CREATE TABLE "RoiCenter_image" (
	backref_id TEXT, 
	image TEXT, 
	PRIMARY KEY (backref_id, image), 
	FOREIGN KEY(backref_id) REFERENCES "RoiCenter" (label)
);

CREATE TABLE "RoiCenter_shapes" (
	backref_id TEXT, 
	shapes TEXT, 
	PRIMARY KEY (backref_id, shapes), 
	FOREIGN KEY(backref_id) REFERENCES "RoiCenter" (label)
);

CREATE TABLE "ArgolightBDataset" (
	name TEXT, 
	description TEXT, 
	sample TEXT, 
	experimenter TEXT, 
	acquisition_date DATE, 
	processed BOOLEAN NOT NULL, 
	processing_date DATE, 
	processing_log TEXT, 
	comment TEXT, 
	input TEXT NOT NULL, 
	output TEXT, 
	PRIMARY KEY (name, description, sample, experimenter, acquisition_date, processed, processing_date, processing_log, comment, input, output), 
	FOREIGN KEY(sample) REFERENCES "Sample" (type)
);

CREATE TABLE "ArgolightEDataset" (
	name TEXT, 
	description TEXT, 
	sample TEXT, 
	experimenter TEXT, 
	acquisition_date DATE, 
	processed BOOLEAN NOT NULL, 
	processing_date DATE, 
	processing_log TEXT, 
	comment TEXT, 
	input TEXT NOT NULL, 
	output TEXT, 
	PRIMARY KEY (name, description, sample, experimenter, acquisition_date, processed, processing_date, processing_log, comment, input, output), 
	FOREIGN KEY(sample) REFERENCES "Sample" (type)
);

CREATE TABLE "FieldIlluminationDataset" (
	name TEXT, 
	description TEXT, 
	sample TEXT, 
	experimenter TEXT, 
	acquisition_date DATE, 
	processed BOOLEAN NOT NULL, 
	processing_date DATE, 
	processing_log TEXT, 
	comment TEXT, 
	input TEXT NOT NULL, 
	output TEXT, 
	PRIMARY KEY (name, description, sample, experimenter, acquisition_date, processed, processing_date, processing_log, comment, input, output), 
	FOREIGN KEY(sample) REFERENCES "Sample" (type)
);

CREATE TABLE "MetricsDataset" (
	name TEXT, 
	description TEXT, 
	sample TEXT, 
	experimenter TEXT, 
	acquisition_date DATE, 
	processed BOOLEAN NOT NULL, 
	processing_date DATE, 
	processing_log TEXT, 
	comment TEXT, 
	PRIMARY KEY (name, description, sample, experimenter, acquisition_date, processed, processing_date, processing_log, comment), 
	FOREIGN KEY(sample) REFERENCES "Sample" (type)
);

CREATE TABLE "RoiCorners_image" (
	backref_id TEXT, 
	image TEXT, 
	PRIMARY KEY (backref_id, image), 
	FOREIGN KEY(backref_id) REFERENCES "RoiCorners" (label)
);

CREATE TABLE "RoiProfiles_image" (
	backref_id TEXT, 
	image TEXT, 
	PRIMARY KEY (backref_id, image), 
	FOREIGN KEY(backref_id) REFERENCES "RoiProfiles" (label)
);
