
"use strict";

let Temperature = require('./Temperature.js');
let LaserEcho = require('./LaserEcho.js');
let JointState = require('./JointState.js');
let ChannelFloat32 = require('./ChannelFloat32.js');
let CompressedImage = require('./CompressedImage.js');
let Imu = require('./Imu.js');
let JoyFeedbackArray = require('./JoyFeedbackArray.js');
let Range = require('./Range.js');
let NavSatFix = require('./NavSatFix.js');
let RegionOfInterest = require('./RegionOfInterest.js');
let TimeReference = require('./TimeReference.js');
let MultiEchoLaserScan = require('./MultiEchoLaserScan.js');
let Image = require('./Image.js');
let PointCloud2 = require('./PointCloud2.js');
let RelativeHumidity = require('./RelativeHumidity.js');
let PointField = require('./PointField.js');
let BatteryState = require('./BatteryState.js');
let LaserScan = require('./LaserScan.js');
let Joy = require('./Joy.js');
let FluidPressure = require('./FluidPressure.js');
let NavSatStatus = require('./NavSatStatus.js');
let PointCloud = require('./PointCloud.js');
let MultiDOFJointState = require('./MultiDOFJointState.js');
let Illuminance = require('./Illuminance.js');
let MagneticField = require('./MagneticField.js');
let CameraInfo = require('./CameraInfo.js');
let JoyFeedback = require('./JoyFeedback.js');

module.exports = {
  Temperature: Temperature,
  LaserEcho: LaserEcho,
  JointState: JointState,
  ChannelFloat32: ChannelFloat32,
  CompressedImage: CompressedImage,
  Imu: Imu,
  JoyFeedbackArray: JoyFeedbackArray,
  Range: Range,
  NavSatFix: NavSatFix,
  RegionOfInterest: RegionOfInterest,
  TimeReference: TimeReference,
  MultiEchoLaserScan: MultiEchoLaserScan,
  Image: Image,
  PointCloud2: PointCloud2,
  RelativeHumidity: RelativeHumidity,
  PointField: PointField,
  BatteryState: BatteryState,
  LaserScan: LaserScan,
  Joy: Joy,
  FluidPressure: FluidPressure,
  NavSatStatus: NavSatStatus,
  PointCloud: PointCloud,
  MultiDOFJointState: MultiDOFJointState,
  Illuminance: Illuminance,
  MagneticField: MagneticField,
  CameraInfo: CameraInfo,
  JoyFeedback: JoyFeedback,
};
