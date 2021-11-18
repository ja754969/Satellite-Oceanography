CDF      
      	DATE_TIME         	STRING256         STRING64   @   STRING32       STRING16      STRING8       STRING4       STRING2       N_PROF        N_PARAM       N_LEVELS   V   N_CALIB       	N_HISTORY             	   title         Argo float vertical profile    institution       JMA    source        
Argo float     history       2021-11-09T07:15:25Z creation      
references        (http://www.argodatamgt.org/Documentation   comment           user_manual_version       3.03   Conventions       Argo-3.0 CF-1.6    featureType       trajectoryProfile         @   	DATA_TYPE                  	long_name         	Data type      
_FillValue                    4�   FORMAT_VERSION                 	long_name         File format version    
_FillValue                    4�   HANDBOOK_VERSION               	long_name         Data handbook version      
_FillValue                    4�   REFERENCE_DATE_TIME                 	long_name         !Date of reference for Julian days      conventions       YYYYMMDDHHMISS     
_FillValue                    4�   DATE_CREATION                   	long_name         Date of file creation      conventions       YYYYMMDDHHMISS     
_FillValue                    4�   DATE_UPDATE                 	long_name         Date of update of this file    conventions       YYYYMMDDHHMISS     
_FillValue                    4�   PLATFORM_NUMBER                   	long_name         Float unique identifier    conventions       WMO float identifier : A9IIIII     
_FillValue                  0  5    PROJECT_NAME                  	long_name         Name of the project    
_FillValue                 �  50   PI_NAME                   	long_name         "Name of the principal investigator     
_FillValue                 �  6�   STATION_PARAMETERS           	            	long_name         ,List of available parameters for the station   conventions       Argo reference table 3     
_FillValue                    80   CYCLE_NUMBER               	long_name         Float cycle number     conventions       <0..N, 0 : launch cycle (if exists), 1 : first complete cycle   
_FillValue         ��        9P   	DIRECTION                  	long_name         !Direction of the station profiles      conventions       -A: ascending profiles, D: descending profiles      
_FillValue                    9h   DATA_CENTRE                   	long_name         .Data centre in charge of float data processing     conventions       Argo reference table 4     
_FillValue                    9p   DC_REFERENCE                  	long_name         (Station unique identifier in data centre   conventions       Data centre convention     
_FillValue                  �  9|   DATA_STATE_INDICATOR                  	long_name         1Degree of processing the data have passed through      conventions       Argo reference table 6     
_FillValue                    :<   	DATA_MODE                  	long_name         Delayed mode or real time data     conventions       >R : real time; D : delayed mode; A : real time with adjustment     
_FillValue                    :T   PLATFORM_TYPE                     	long_name         Type of float      
_FillValue                  �  :\   FLOAT_SERIAL_NO                   	long_name         Serial number of the float     
_FillValue                  `  ;   FIRMWARE_VERSION                  	long_name         Instrument version     
_FillValue                  `  ;|   WMO_INST_TYPE                     	long_name         Coded instrument type      conventions       Argo reference table 8     
_FillValue                    ;�   JULD               	long_name         ?Julian day (UTC) of the station relative to REFERENCE_DATE_TIME    standard_name         time   units         "days since 1950-01-01 00:00:00 UTC     conventions       8Relative julian days with decimal part (as parts of day)   
_FillValue        A.�~       axis      T         0  ;�   JULD_QC                	long_name         Quality on Date and Time   conventions       Argo reference table 2     
_FillValue                    <$   JULD_LOCATION                  	long_name         @Julian day (UTC) of the location relative to REFERENCE_DATE_TIME   units         "days since 1950-01-01 00:00:00 UTC     conventions       8Relative julian days with decimal part (as parts of day)   
_FillValue        A.�~          0  <,   LATITUDE               	long_name         &Latitude of the station, best estimate     standard_name         latitude   units         degree_north   
_FillValue        @�i�       	valid_min         �V�        	valid_max         @V�        axis      Y         0  <\   	LONGITUDE                  	long_name         'Longitude of the station, best estimate    standard_name         	longitude      units         degree_east    
_FillValue        @�i�       	valid_min         �f�        	valid_max         @f�        axis      X         0  <�   POSITION_QC                	long_name         ,Quality on position (latitude and longitude)   conventions       Argo reference table 2     
_FillValue                    <�   POSITIONING_SYSTEM                    	long_name         Positioning system     
_FillValue                  0  <�   PROFILE_PRES_QC                	long_name         #Global quality flag of PRES profile    conventions       Argo reference table 2a    
_FillValue                    <�   PROFILE_TEMP_QC                	long_name         #Global quality flag of TEMP profile    conventions       Argo reference table 2a    
_FillValue                    <�   PROFILE_PSAL_QC                	long_name         #Global quality flag of PSAL profile    conventions       Argo reference table 2a    
_FillValue                    =   VERTICAL_SAMPLING_SCHEME                  	long_name         Vertical sampling scheme   conventions       Argo reference table 16    
_FillValue                    =   CONFIG_MISSION_NUMBER                  	long_name         'Float's mission number for each profile    conventions       @0..N, 0 : launch mission (if exists), 1 : first complete mission   
_FillValue         ��        C   PRES         
      
   	long_name         SEA PRESSURE   standard_name         sea_water_pressure     
_FillValue        G�O�   units         decibar    	valid_min                	valid_max         F;�    C_format      %7.1f      FORTRAN_format        F7.1   
resolution        =���   axis      Z          C$   PRES_QC          
         	long_name         quality flag   conventions       Argo reference table 2     
_FillValue                   K4   PRES_ADJUSTED            
      
   	long_name         SEA PRESSURE   standard_name         sea_water_pressure     
_FillValue        G�O�   units         decibar    	valid_min                	valid_max         F;�    C_format      %7.1f      FORTRAN_format        F7.1   
resolution        =���   axis      Z          M8   PRES_ADJUSTED_QC         
         	long_name         quality flag   conventions       Argo reference table 2     
_FillValue                   UH   PRES_ADJUSTED_ERROR          
         	long_name         SEA PRESSURE   
_FillValue        G�O�   units         decibar    C_format      %7.1f      FORTRAN_format        F7.1   
resolution        =���       WL   TEMP         
      	   	long_name         $SEA TEMPERATURE IN SITU ITS-90 SCALE   standard_name         sea_water_temperature      
_FillValue        G�O�   units         degree_Celsius     	valid_min         �      	valid_max         B      C_format      %9.3f      FORTRAN_format        F9.3   
resolution        :�o       _\   TEMP_QC          
         	long_name         quality flag   conventions       Argo reference table 2     
_FillValue                   gl   TEMP_ADJUSTED            
      	   	long_name         $SEA TEMPERATURE IN SITU ITS-90 SCALE   standard_name         sea_water_temperature      
_FillValue        G�O�   units         degree_Celsius     	valid_min         �      	valid_max         B      C_format      %9.3f      FORTRAN_format        F9.3   
resolution        :�o       ip   TEMP_ADJUSTED_QC         
         	long_name         quality flag   conventions       Argo reference table 2     
_FillValue                   q�   TEMP_ADJUSTED_ERROR          
         	long_name         $SEA TEMPERATURE IN SITU ITS-90 SCALE   
_FillValue        G�O�   units         degree_Celsius     C_format      %9.3f      FORTRAN_format        F9.3   
resolution        :�o       s�   PSAL         
      	   	long_name         PRACTICAL SALINITY     standard_name         sea_water_salinity     
_FillValue        G�O�   units         psu    	valid_min                	valid_max         B(     C_format      %9.3f      FORTRAN_format        F9.3   
resolution        :�o       {�   PSAL_QC          
         	long_name         quality flag   conventions       Argo reference table 2     
_FillValue                   ��   PSAL_ADJUSTED            
      	   	long_name         PRACTICAL SALINITY     standard_name         sea_water_salinity     
_FillValue        G�O�   units         psu    	valid_min                	valid_max         B(     C_format      %9.3f      FORTRAN_format        F9.3   
resolution        :�o       ��   PSAL_ADJUSTED_QC         
         	long_name         quality flag   conventions       Argo reference table 2     
_FillValue                   ��   PSAL_ADJUSTED_ERROR          
         	long_name         PRACTICAL SALINITY     
_FillValue        G�O�   units         psu    C_format      %9.3f      FORTRAN_format        F9.3   
resolution        :�o       ��   	PARAMETER               	            	long_name         /List of parameters with calibration information    conventions       Argo reference table 3     
_FillValue                    ��   SCIENTIFIC_CALIB_EQUATION               	            	long_name         'Calibration equation for this parameter    
_FillValue                    ��   SCIENTIFIC_CALIB_COEFFICIENT            	            	long_name         *Calibration coefficients for this equation     
_FillValue                    ��   SCIENTIFIC_CALIB_COMMENT            	            	long_name         .Comment applying to this parameter calibration     
_FillValue                    ��   SCIENTIFIC_CALIB_DATE               	             	long_name         Date of calibration    
_FillValue                  �  ��   HISTORY_INSTITUTION                      	long_name         "Institution which performed action     conventions       Argo reference table 4     
_FillValue                    ��   HISTORY_STEP                     	long_name         Step in data processing    conventions       Argo reference table 12    
_FillValue                    �    HISTORY_SOFTWARE                     	long_name         'Name of software which performed action    conventions       Institution dependent      
_FillValue                    �   HISTORY_SOFTWARE_RELEASE                     	long_name         2Version/release of software which performed action     conventions       Institution dependent      
_FillValue                    �0   HISTORY_REFERENCE                        	long_name         Reference of database      conventions       Institution dependent      
_FillValue                 �  �H   HISTORY_DATE                      	long_name         #Date the history record was created    conventions       YYYYMMDDHHMISS     
_FillValue                  T  ��   HISTORY_ACTION                       	long_name         Action performed on data   conventions       Argo reference table 7     
_FillValue                    �   HISTORY_PARAMETER                        	long_name         (Station parameter action is performed on   conventions       Argo reference table 3     
_FillValue                  `  �4   HISTORY_START_PRES                    	long_name          Start pressure action applied on   
_FillValue        G�O�   units         decibar         Ҕ   HISTORY_STOP_PRES                     	long_name         Stop pressure action applied on    
_FillValue        G�O�   units         decibar         Ҭ   HISTORY_PREVIOUS_VALUE                    	long_name         +Parameter/Flag previous value before action    
_FillValue        G�O�        ��   HISTORY_QCTEST                       	long_name         <Documentation of tests performed, tests failed (in hex form)   conventions       EWrite tests performed when ACTION=QCP$; tests failed when ACTION=QCF$      
_FillValue                  `  ��Argo profile    3.0 1.2 19500101000000  20211109071526  20211109071526  2903193 2903193 2903193 2903193 2903193 2903193 Routine-JMA                                                     Routine-JMA                                                     Routine-JMA                                                     Routine-JMA                                                     Routine-JMA                                                     Routine-JMA                                                     JMA                                                             JMA                                                             JMA                                                             JMA                                                             JMA                                                             JMA                                                             PRES            TEMP            PSAL            PRES            TEMP            PSAL            PRES            TEMP            PSAL            PRES            TEMP            PSAL            PRES            TEMP            PSAL            PRES            TEMP            PSAL                  	   
         AAAAAA  JAJAJAJAJAJA53325969                        53355940                        53403837                        53454404                        53502084                        53546330                        2C  2C  2C  2C  2C  2C  DDDDDD                                                                                                                                                                                                  AK 1000-16JP-017AK 1000-16JP-017AK 1000-16JP-017AK 1000-16JP-017AK 1000-16JP-017AK 1000-16JP-0175607A09         5607A09         5607A09         5607A09         5607A09         5607A09         844 844 844 844 844 844 @��u0�@�߱�b:@����c@�_��˪@� ��(3�@�!����111111  @��u0�@�߱�b:@����c@�_��˪@� ��(3�@�!����@9���R@:!G�z�@:�z�G�@:�
=p��@;2���m@;C�
=p�@`L���S�@`B�x���@`:�x���@`=\(�@`LZ�1@`V��O�<111111  ARGOS   ARGOS   ARGOS   ARGOS   ARGOS   ARGOS   AAAAAA  AAAAAA  AAAAAA  Primary sampling: discrete [SBE41CP pumping for 19 seconds per measurements]                                                                                                                                                                                    Primary sampling: discrete [SBE41CP pumping for 19 seconds per measurements]                                                                                                                                                                                    Primary sampling: discrete [SBE41CP pumping for 19 seconds per measurements]                                                                                                                                                                                    Primary sampling: discrete [SBE41CP pumping for 19 seconds per measurements]                                                                                                                                                                                    Primary sampling: discrete [SBE41CP pumping for 19 seconds per measurements]                                                                                                                                                                                    Primary sampling: discrete [SBE41CP pumping for 19 seconds per measurements]                                                                                                                                                                                                          @�33AffA{33A�ffA�33A���BffB"  B4��BI��Br  B�33B�33B���B�ffB���B���C  C��C33C  C)33C3�C=�CG�fC\�Cp� C�  C���C�33C�  C�  C�s3C�� C�� C��C�33C��3C��fC��3D�3D�fDfD�3D� D� D �D%  D*  D.��D3�fD9�D>  DB��DH�DM�DR�DV��D\3DafDe��Dk3Dp&fDufDy� D�FfD�|�D�ٚD� D�P D���D�ɚD�3D�FfD��3D��3D��fD�I�DԖfD��fD��D�L�D�y�D�3D�f?�  @���A+33Ay��A���A�  A�ffB
ffB$ffB6��BI��BpffB�33B�33B�  BǙ�B�33BC��C�C�fC��C*ffC4��C>L�CH  C[�3Co�C���C���C��fC�s3C�L�C�  C�33C��fC��3C�  C��fC�&fC�&fD&fD�D  D3DfD&fD fD$�3D*�D.�fD4�D9,�D>  DC�DG�fDLٚDQ��DWfD[�fDa�Df&fDkfDo��Dt�fDyٚD�,�D���D�� D�fD�L�D�vfD�� D�3D�C3D���D���D�fD�Y�DԀ D�ٚD�fD�<�D��D��fD�f>���@�  A��Ax  A�  A���A�33B33B$  B7��BJffBr  B���B�ffB���B�ffB���B�33C�fCffC�C �C)� C4L�C>��CG��C\L�Co�fC���C�ffC�� C��3C�33C��C�� C�ٚCљ�C���C�  C�Y�C��fD�D3D  D  D  DٚD�3D%fD*,�D/  D4�D9  D>fDC�DG�3DL��DQ�fDV� D\  D`��Df�Dk�Dp  Du�Dz  D�C3D��fD��3D�  D�P D��fD��fD�  D�FfD�� D��fD�  D�C3Dԉ�D��3D�	�D�FfD�fD�� D��3>L��@�  A#33Ay��A���A͙�A�  B33B"  B6��BK33Bq33B���B�33B�ffB�ffBܙ�BC��C��CffC�fC*  C4  C>��CH� C\� Cp  C�� C��3C���C�33C�33C�Y�C�  C�&fC��fC��fC���C�ٚC�� D��D��D�fD�3D,�D  D �D%fD)��D/  D4fD9  D>�DCfDH�DM�DQٚDV�fD[��D`��Df�Dk33Dp�Du  Dz33D�P D�vfD�� D���D�C3D��fD��3D��D�S3D�� D��fD��D�I�D�|�D��fD�	�D�C3D� D�ɚD�3?333@���A$��Ax  A�  A���A�ffB��B!33B6ffBH��Br��B�ffB�33B�  B���Bܙ�BC� C�3C  C   C*ffC433C>33CG� C\ffCp33C��3C���C�s3C�  C�@ C�  C��3C�� Cѳ3C��C�&fC�3C���D  DfD��D3D&fD��D�fD$ٚD)��D/  D4�D8�3D>  DB��DG��DMfDQ�fDW  D[��Da3DffDj�fDo� Du  Dz  D�P D�y�D���D�fD�L�D��3D�ٚD�fD�C3D��3D���D�3D�@ Dԃ3D���D��D�L�D퉚D���D�3>���@�  A$��Aq��A�  A�33A���BffB#33B7��BI��Bq33B���B���B�33BǙ�B�ffB�ffC�3C��C�fC � C*�3C3��C>�CG�fC[�3Cp�C��fC��C�� C��C�  C�  C��C��C�Y�C��3C�3C��C���D�DfD��D3D��DfD fD%  D*&fD/  D4,�D9�D>�DC�DH&fDMfDQ��DV�fD\�D`�3DffDk,�DpfDu�Dz�D�C3D�� D�� D� D�C3D���D��fD�	�D�P D���D��3D�3D�L�Dԓ3D��fD�	�D�L�D� D��3D���111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111    @�33AffA{33A�ffA�33A���BffB"  B4��BI��Br  B�33B�33B���B�ffB���B���C  C��C33C  C)33C3�C=�CG�fC\�Cp� C�  C���C�33C�  C�  C�s3C�� C�� C��C�33C��3C��fC��3D�3D�fDfD�3D� D� D �D%  D*  D.��D3�fD9�D>  DB��DH�DM�DR�DV��D\3DafDe��Dk3Dp&fDufDy� D�FfD�|�D�ٚD� D�P D���D�ɚD�3D�FfD��3D��3D��fD�I�DԖfD��fD��D�L�D�y�D�3D�f?fff@���A)��Ax  A���A�33A�B
  B$  B6ffBI33Bp  B�  B�  B���B�ffB�  B�ffC�3C  C��C� C*L�C4� C>33CG�fC[��Co  C�� C���C�ٚC�ffC�@ C��3C�&fC�ٚC��fC��3C�ٚC��C��D  D3D��D�D  D  D   D$��D*fD.� D43D9&fD>�DC3DG� DL�3DQ�3DW  D[� DafDf  Dk  Do�fDt� Dy�3D�)�D��fD���D�3D�I�D�s3D���D� D�@ D��fD�ɚD�3D�VfD�|�D��fD�3D�9�D퉚D��3D�3>���@�33AffAy��A���A͙�A�  B��B$ffB8  BJ��BrffB�  B���B���Bș�B�  B�ffC  C� C33C 33C)��C4ffC>�3CG�fC\ffCp  C���C�s3C���C�  C�@ C�&fC���C��fCѦfC�ٚC��C�ffC��3D  D�DfD&fD&fD� D��D%�D*33D/&fD4  D9fD>�DC  DGٚDL�3DQ��DV�fD\fDa  Df  Dk  Dp&fDu  Dz&fD�FfD���D��fD�3D�S3D���D�ٚD�3D�I�D��3D�ٚD�3D�FfDԌ�D��fD��D�I�D퉚D��3D��f=���@���A!��Ax  A�  A���A�33B��B!��B6ffBJ��Bp��B���B�  B�33B�33B�ffB�ffC�3C� CL�C��C)�fC3�fC>�3CHffC\ffCo�fC��3C��fC�� C�&fC�&fC�L�C��3C��C�ٚC�ٚC�� C���C��3D�fD�fD� D��D&fD��D fD%  D)�fD.��D4  D8��D>fDC  DHfDMfDQ�3DV� D[�fD`�3Df3Dk,�DpfDu�Dz,�D�L�D�s3D���D��fD�@ D��3D�� D�	�D�P D���D��3D�	�D�FfD�y�D��3D�fD�@ D�|�D��fD� ?333@���A$��Ax  A�  A���A�ffB��B!33B6ffBH��Br��B�ffB�33B�  B���Bܙ�BC� C�3C  C   C*ffC433C>33CG� C\ffCp33C��3C���C�s3C�  C�@ C�  C��3C�� Cѳ3C��C�&fC�3C���D  DfD��D3D&fD��D�fD$ٚD)��D/  D4�D8�3D>  DB��DG��DMfDQ�fDW  D[��Da3DffDj�fDo� Du  Dz  D�P D�y�D���D�fD�L�D��3D�ٚD�fD�C3D��3D���D�3D�@ Dԃ3D���D��D�L�D퉚D���D�3>���@�  A$��Aq��A�  A�33A���BffB#33B7��BI��Bq33B���B���B�33BǙ�B�ffB�ffC�3C��C�fC � C*�3C3��C>�CG�fC[�3Cp�C��fC��C�� C��C�  C�  C��C��C�Y�C��3C�3C��C���D�DfD��D3D��DfD fD%  D*&fD/  D4,�D9�D>�DC�DH&fDMfDQ��DV�fD\�D`�3DffDk,�DpfDu�Dz�D�C3D�� D�� D� D�C3D���D��fD�	�D�P D���D��3D�3D�L�Dԓ3D��fD�	�D�L�D� D��3D���111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�A��jA���A���A���A��A�bAէ�AͼjA�K�AƼjAť�A��\A�~�A��A�VA�(�A��+A�ĜA���A��uA��7A���A��^A�\)A���A��HA���A�JA��A��A���A���A|�At�!Ah{A[G�AO�ACt�A9��A1;dA,��A%|�A��A�!AVA	��A��@�/@�?}@��@�(�@�K�@��@��@�S�@�n�@�$�@�bN@��y@���@��@���@�Z@|j@y7L@q��@a%@XbN@M@C��@<z�@6$�@0��@*�\@$�j@�@��@@%@;d@�@b@?}@t�@�7?��A�A���A�jA�ĜA�5?A�VA���A��A؃A�ZA�O�A�hsA���A�=qA��jA�bA��mA�|�A��A�jA�1A��A��yA�G�A�A���A�jA�?}A�G�A��HA��PA���A�r�Aw�AoƨAd$�AY�AT��AHA9"�A,Q�A%
=A jA~�A33A�yA@��@���@�"�@�
=@���@�/@�Ĝ@��-@���@�X@�(�@�  @��\@��\@��
@��@���@{��@t�/@m�@`�`@ZJ@M��@D��@=`B@5�h@0bN@&�@!��@V@t�@��@?}@hs@�@
�\@��@�-@�A��HA��mA��`A�9A�A�FA�x�A�p�A�VA�M�A��yA��TA�C�A���A�z�A��-A�$�A�l�A�|�A��A�(�A���A���A�9XA�"�A��A�  A�p�A��!A��A�5?A�~�Ax��Ao�
Ag�A\ĜAT�RAL5?AD��A:ZA4��A*�DA!��A�RAVA
ffA�@�E�@��/@�Q�@�  @�\)@�V@���@�ff@�-@��@�5?@���@��@��@�@�/@���@�A�@z�!@i��@ahs@T�@L�@GK�@Ax�@6�@1�^@)&�@#dZ@K�@J@E�@~�@�@�D@	��@��@�/@A��-A���A�z�A��A�(�A�A�1'A�`BAߩ�A���A�A˰!A���A�7LA�VA�~�A�dZA���A���A��A��-A�+A���A���A�r�A��A�/A��7A���A�K�A�jA�z�A���A�p�A}��Au�Aml�Ae�AZȴAQ&�AH�/AA7LA4�jA'A�jA�A�/A�A��@�9X@�t�@�+@�J@�@�Z@��w@��w@�@�Z@�bN@�$�@���@�S�@�O�@�
=@��
@x��@g��@Z-@M/@DI�@<��@6��@2�@.5?@(�u@%`B@\)@dZ@+@�7@�+@/@b@V@^5A�l�A�n�A�l�A�S�A��A��/A�?}A��A�ƨA���A�r�A�%AƃA��;A���A��yA�jA�&�A���A��A���A��+A���A�A�A��A���A��PA�/A�9XA�-A�$�A��#A�dZA��Az�Ar^5Aj$�Abr�AX�ANn�AB�9A7��A.$�A&n�A�hAbNA��AS�A?}@�/@�\)@ݙ�@�K�@���@�|�@�dZ@��#@���@��T@�1'@�{@��@�@��@���@���@x  @l�@_��@X1'@Pr�@J-@A7L@8��@4��@-@'\)@$9X@ȴ@&�@{@M�@1'@p�@	��@�;A��TA��A��A���A���A�v�A�ȴA�  A�p�A���A�bNA�7LA�C�A���A�33A���A��A�v�A�1A���A�1'A�v�A���A���A��A�+A��;A�ZA��^A��
A���A�=qA�1A���A}%Aw��Al�/AeoAX�!AO?}AFQ�A?+A3p�A*�\A%��A!�A�A��Ax�@���@��@���@؋D@ЋD@�@�dZ@�S�@��@���@�z�@�X@�V@�Ĝ@��#@���@�33@�&�@s��@k�F@^v�@X�u@T�/@EO�@>v�@6��@0��@)x�@$�D@"M�@ȴ@Q�@{@~�@l�@�@�111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111G�O�A���A���A���A��A�bAէ�AͼjA�K�AƼjAť�A��\A�~�A��A�VA�(�A��+A�ĜA���A��uA��7A���A��^A�\)A���A��HA���A�JA��A��A���A���A|�At�!Ah{A[G�AO�ACt�A9��A1;dA,��A%|�A��A�!AVA	��A��@�/@�?}@��@�(�@�K�@��@��@�S�@�n�@�$�@�bN@��y@���@��@���@�Z@|j@y7L@q��@a%@XbN@M@C��@<z�@6$�@0��@*�\@$�j@�@��@@%@;d@�@b@?}@t�@�7?��A�A���A�jA�ĜA�5?A�VA���A��A؃A�ZA�O�A�hsA���A�=qA��jA�bA��mA�|�A��A�jA�1A��A��yA�G�A�A���A�jA�?}A�G�A��HA��PA���A�r�Aw�AoƨAd$�AY�AT��AHA9"�A,Q�A%
=A jA~�A33A�yA@��@���@�"�@�
=@���@�/@�Ĝ@��-@���@�X@�(�@�  @��\@��\@��
@��@���@{��@t�/@m�@`�`@ZJ@M��@D��@=`B@5�h@0bN@&�@!��@V@t�@��@?}@hs@�@
�\@��@�-@�G�O�A��mA��`A�9A�A�FA�x�A�p�A�VA�M�A��yA��TA�C�A���A�z�A��-A�$�A�l�A�|�A��A�(�A���A���A�9XA�"�A��A�  A�p�A��!A��A�5?A�~�Ax��Ao�
Ag�A\ĜAT�RAL5?AD��A:ZA4��A*�DA!��A�RAVA
ffA�@�E�@��/@�Q�@�  @�\)@�V@���@�ff@�-@��@�5?@���@��@��@�@�/@���@�A�@z�!@i��@ahs@T�@L�@GK�@Ax�@6�@1�^@)&�@#dZ@K�@J@E�@~�@�@�D@	��@��@�/@G�O�A���A�z�A��A�(�A�A�1'A�`BAߩ�A���A�A˰!A���A�7LA�VA�~�A�dZA���A���A��A��-A�+A���A���A�r�A��A�/A��7A���A�K�A�jA�z�A���A�p�A}��Au�Aml�Ae�AZȴAQ&�AH�/AA7LA4�jA'A�jA�A�/A�A��@�9X@�t�@�+@�J@�@�Z@��w@��w@�@�Z@�bN@�$�@���@�S�@�O�@�
=@��
@x��@g��@Z-@M/@DI�@<��@6��@2�@.5?@(�u@%`B@\)@dZ@+@�7@�+@/@b@V@^5A�l�A�n�A�l�A�S�A��A��/A�?}A��A�ƨA���A�r�A�%AƃA��;A���A��yA�jA�&�A���A��A���A��+A���A�A�A��A���A��PA�/A�9XA�-A�$�A��#A�dZA��Az�Ar^5Aj$�Abr�AX�ANn�AB�9A7��A.$�A&n�A�hAbNA��AS�A?}@�/@�\)@ݙ�@�K�@���@�|�@�dZ@��#@���@��T@�1'@�{@��@�@��@���@���@x  @l�@_��@X1'@Pr�@J-@A7L@8��@4��@-@'\)@$9X@ȴ@&�@{@M�@1'@p�@	��@�;G�O�A��A��A���A���A�v�A�ȴA�  A�p�A���A�bNA�7LA�C�A���A�33A���A��A�v�A�1A���A�1'A�v�A���A���A��A�+A��;A�ZA��^A��
A���A�=qA�1A���A}%Aw��Al�/AeoAX�!AO?}AFQ�A?+A3p�A*�\A%��A!�A�A��Ax�@���@��@���@؋D@ЋD@�@�dZ@�S�@��@���@�z�@�X@�V@�Ĝ@��#@���@�33@�&�@s��@k�F@^v�@X�u@T�/@EO�@>v�@6��@0��@)x�@$�D@"M�@ȴ@Q�@{@~�@l�@�@� 111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111 1111111111111111111111111111111111111111111111111111111111111111111111111111111111111 111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111 1111111111111111111111111111111111111111111111111111111111111111111111111111111111111G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�B
�?B
�3B
�-B
�-B
��B
/B
u�B
�!B
�}B%BJB7LB��B�yB��B1B)�B��B��B�B��BÖB�qB�qB��B��Bx�B6FBoB
��B
��B
��B
� B
S�B
�B	�)B	��B	s�B	M�B	/B	�B	1B��B�B�HB��B��B��B��B��B�}B��B��B�;B��B	B	1B	�B	$�B	(�B	'�B	2-B	L�B	dZB	k�B	}�B	��B	�B	ĜB	�/B	�B	��B
%B
uB
 �B
/B
:^B
B�B
L�B
R�B
ZB
cTB
iyB
m�B
r�B
y�B
�VB
�DB
�JB
�DB
|�B
e`B
�PBO�B
��B
ÖB
�B)�B�B��B��BP�BC�B6FB'�B{B+B�5B�XB��B��B�DBO�B6FB�BVB
�B
��B
��B
k�B
?}B
%B	��B	�LB	�B	E�B	�B	1B��B�yB�`B�5B��B��B��BƨB��BB��B��B�TB��B	
=B	PB	bB	VB	&�B	M�B	R�B	S�B	XB	e`B	u�B	��B	��B	ȴB	�
B	�sB	��B
1B
�B
&�B
1'B
5?B
<jB
C�B
L�B
T�B
]/B
dZB
hsB
n�B
�=B
�=B
�DB
�1B
�oB
��B
�=B
��B
�B
�B
��B�Bp�B�FB�HB�B�B
=B��B�BB��BȴBĜB��B�Bn�BH�B.B
��B
�B
B
��B
r�B
C�B
�B	�NB	�}B	��B	y�B	P�B	9XB	�B��B�B�TB�
B��BƨBɺBǮBÖBƨB��B��B�B��B	1B	B	�B	VB	"�B	33B	E�B	P�B	YB	aHB	{�B	��B	�'B	ÖB	��B	�mB	�B	��B
bB
�B
&�B
33B
=qB
G�B
O�B
W
B
]/B
e`B
iyB
m�B
�B
�!B
��B
��B
�VB
r�B
M�B
T�B
~�B
~�B
�BVBO�B�B�jB��BVB,B�B�B�B��BÖB��B�dB��Bt�BffB_;B0!B
��B
�B
�qB
��B
�+B
cTB
9XB
uB	�B	�qB	��B	�B	K�B	�B	B�yB�/BɺBÖB��BŢBBɺB��B��B�
B�B��B		7B	\B	$�B	�B	�B	(�B	8RB	=qB	ffB	�VB	��B	�}B	��B	�NB	�B	��B
B
hB
�B
(�B
2-B
<jB
I�B
Q�B
T�B
`BB
hsB
n�B
�B
�B
�B
�FB
��B
�qB
�LB
�TB
�NB� BH�B]/B�dB�5BR�Bo�BXB2-B!�B�B�BPB%B�B�5B�}B��Bo�BG�B&�B+B
�HB
�XB
�hB
s�B
K�B
"�B	��B	�5B	�B	�B	YB	9XB	�B��B�NB��B��B��BB��BÖBƨB��B��B�B�B��B��B��B��B	
=B	�B	"�B	(�B	C�B	gmB	}�B	��B	�dB	��B	�B	�B	��B
DB
hB
 �B
%�B
2-B
=qB
D�B
L�B
Q�B
W
B
aHB
e`B
�}B
�}B
��B
ÖB
�wB
�}B
��B
�B
�\B
�fBBv�B��BŢB��B��BB�B�B�BVBB�BBB�B��B�{Bs�BG�B�B
��B
�B
�-B
�B
e`B
/B
1B	��B	��B	}�B	aHB	8RB	�B	bB	B�HB��B��B�^B�^B�B�?B��B�)B�fB�TB�mB��B	B	{B	�B	�B	%�B	'�B	2-B	O�B	}�B	�B	�qB	ÖB	�;B	�B	��B	��B
B
hB
�B
(�B
1'B
>wB
D�B
K�B
Q�B
ZB
cT111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111G�O�B
��B
��B
�[B
��B
7�B
z�B
��B
�ABmB�B8�B��B�yB�PB�B)�B��B�2B�B�aB�uB��B�B��B��Bx�B5�B�B
�8B
�\B
�B
}B
S�B
�B	�B	��B	shB	M�B	./B	/B	�B�JB�)B��B�B�TB�vBϫB�4B�BB��B�B�5B��B	�B	+B	yB	#�B	'�B	&�B	1B	K�B	cB	jKB	|�B	�]B	��B	�GB	��B	�B	�rB
�B
�B
pB
-�B
8�B
AB
KDB
Q�B
X�B
a�B
h
B
l"B
qAB
xRG�O�B
�lB
��B
��B
�GB
iDB
�BO�B
�B
�tB
� B(sB��B�_B��BP�BCGB5�B'8B�BYB��B��B��B�mB��BN�B4�BIBB
�B
� B
�hB
j�B
?HB
�B	��B	�B	�'B	E�B	B	+B��B�sB��B�dB�PB�B�B�SB�iB��B��B��B��B��B	�B	�B	BB	�B	%�B	L~B	Q�B	R�B	V�B	c�B	t9B	��B	�sB	�B	�gB	��B	�$B
�B
�B
%FB
/iB
3�B
:�B
A�B
K)B
S@B
[�B
b�B
f�B
l�G�O�G�O�B
�B
��B
� B
��B
��B
��B
�B
�B
ΥB�Bp�B��B�|B�B�B	lB��B߾B�HB�zB��B��B��BmCBF�B,�B
��B
�,B
� B
��B
q�B
BuB
�B	�-B	�wB	�eB	x�B	O�B	8�B	�B��B�}B�NB�BϑB�B�fB�YB�'B�9B�jBҽB��B�2B	tB	AB	+B	dB	 �B	1[B	C�B	N�B	WsB	_pB	y�B	�{B	�5B	��B	��B	�zB	�}B	��B
<B
�B
$�B
1B
;dB
E�B
M�B
T�B
[#B
c:B
gRB
kkG�O�G�O�B
��B
��B
��B
x�B
OB
U�B
�B
��B
�	B�BO�B��B�jB��BB+�B�B�9B�BѷB��B�uB��B�Br�BdZB]~B.}B
�0B
�?B
��B
�B
��B
a�B
8B
TB	�KB	�B	�VB	�OB	K)B	�B	 B��BۦB�B�AB��B�3B��B��B��B�)B�MB�B��B	B	B	"�B	�B	�B	&�B	6FB	;B	dZB	�0B	��B	�VB	ΥB	��B	�OB	��B
�B
B
?B
&�B
/�B
:*B
G_B
OvB
R�B
^B
f2B
l=G�O�B
�*B
�KB
��B
��B
�B
�(B
�B
�B��BL0B]dB�BݲBQ4Bn�BW?B1[B�B�B�BDBgB�sB��B��B��Bm�BE�B$�BB
�;B
�fB
�BB
q�B
I�B
 �B	�VB	��B	��B	��B	W�B	7�B	YB�TB�vB�[B��B�B��B��B�UBĶBȴB��B��B�B�B��B��B��B	�B	�B	 BB	&�B	A B	d�B	{dB	��B	��B	�7B	׍B	��B	�%B
�B
�B
B
#:B
/�B
:�B
A�B
J	B
OBB
T{B
^jB
b�G�O�G�O�B
��B
�;B
��B
�B
�B
��B
��B
�fB
��BvB�B��B�B��B{B�B�BmB�B��B@B��B��B�cB��B�:BqvBE�B2B
�aB
өB
�B
�B
c�B
,�B
�B	��B	��B	{�B	_�B	6zB	$B	�B��BߊB��BɺB�lB�B�"B��B�1BٚB��B��B��B�FB	�B	B	�B	B	# B	%,B	/5B	MB	z�B	�B	�^B	��B	�CB	�sB	��B	��B	��B
VB
�B
%�B
.B
;JB
A�B
H�B
N�B
W
B
`' 1111111111111111111111111111111111111111111111111111111111111111111111111111111111111 1111111111111111111111111111111111111111111111111111111111111111111111111111111111111  111111111111111111111111111111111111111111111111111111111111111111111111111111111111  111111111111111111111111111111111111111111111111111111111111111111111111111111111111 1111111111111111111111111111111111111111111111111111111111111111111111111111111111111  111111111111111111111111111111111111111111111111111111111111111111111111111111111111G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�PRES            TEMP            PSAL            PRES            TEMP            PSAL            PRES            TEMP            PSAL            PRES            TEMP            PSAL            PRES            TEMP            PSAL            PRES            TEMP            PSAL            PRES_ADJ=PRES-PO1+PO2,  where PO1 is PRESSURE OFFSET from this cycle and PO2 is PRESSURE OFFSET from next cycle; PRES_ADJ_ERR=Manufacturer sensor accuracy                                                                                                      TEMP_ADJ=TEMP; TEMP_ADJ_ERR=Manufacturer sensor accuracy                                                                                                                                                                                                        PSAL_ADJ = RecalS= psal(PRES_ADJ,TEMP,Conductivity)                                                                                                                                                                                                             PRES_ADJ=PRES-PO1+PO2,  where PO1 is PRESSURE OFFSET from this cycle and PO2 is PRESSURE OFFSET from next cycle; PRES_ADJ_ERR=Manufacturer sensor accuracy                                                                                                      TEMP_ADJ=TEMP; TEMP_ADJ_ERR=Manufacturer sensor accuracy                                                                                                                                                                                                        PSAL_ADJ = RecalS= psal(PRES_ADJ,TEMP,Conductivity)                                                                                                                                                                                                             PRES_ADJ=PRES-PO1+PO2,  where PO1 is PRESSURE OFFSET from this cycle and PO2 is PRESSURE OFFSET from next cycle; PRES_ADJ_ERR=Manufacturer sensor accuracy                                                                                                      TEMP_ADJ=TEMP; TEMP_ADJ_ERR=Manufacturer sensor accuracy                                                                                                                                                                                                        PSAL_ADJ = RecalS= psal(PRES_ADJ,TEMP,Conductivity)                                                                                                                                                                                                             PRES_ADJ=PRES-PO1+PO2,  where PO1 is PRESSURE OFFSET from this cycle and PO2 is PRESSURE OFFSET from next cycle; PRES_ADJ_ERR=Manufacturer sensor accuracy                                                                                                      TEMP_ADJ=TEMP; TEMP_ADJ_ERR=Manufacturer sensor accuracy                                                                                                                                                                                                        PSAL_ADJ = RecalS= psal(PRES_ADJ,TEMP,Conductivity)                                                                                                                                                                                                             PRES_ADJ=PRES-PO1+PO2,  where PO1 is PRESSURE OFFSET from this cycle and PO2 is PRESSURE OFFSET from next cycle; PRES_ADJ_ERR=Manufacturer sensor accuracy                                                                                                      TEMP_ADJ=TEMP; TEMP_ADJ_ERR=Manufacturer sensor accuracy                                                                                                                                                                                                        PSAL_ADJ = RecalS= psal(PRES_ADJ,TEMP,Conductivity)                                                                                                                                                                                                             PRES_ADJ=PRES-PO1+PO2,  where PO1 is PRESSURE OFFSET from this cycle and PO2 is PRESSURE OFFSET from next cycle; PRES_ADJ_ERR=Manufacturer sensor accuracy                                                                                                      TEMP_ADJ=TEMP; TEMP_ADJ_ERR=Manufacturer sensor accuracy                                                                                                                                                                                                        PSAL_ADJ = RecalS= psal(PRES_ADJ,TEMP,Conductivity)                                                                                                                                                                                                             PO1=0.0(dbar); PO2=0.0(dbar)                                                                                                                                                                                                                                    None                                                                                                                                                                                                                                                            None                                                                                                                                                                                                                                                            PO1=0.0(dbar); PO2=-0.1(dbar)                                                                                                                                                                                                                                   None                                                                                                                                                                                                                                                            None                                                                                                                                                                                                                                                            PO1=-0.1(dbar); PO2=0.0(dbar)                                                                                                                                                                                                                                   None                                                                                                                                                                                                                                                            None                                                                                                                                                                                                                                                            PO1=0.0(dbar); PO2=-0.1(dbar)                                                                                                                                                                                                                                   None                                                                                                                                                                                                                                                            None                                                                                                                                                                                                                                                            PO1=-0.1(dbar); PO2=-0.1(dbar)                                                                                                                                                                                                                                  None                                                                                                                                                                                                                                                            None                                                                                                                                                                                                                                                            PO1=-0.1(dbar); PO2=-0.1(dbar)                                                                                                                                                                                                                                  None                                                                                                                                                                                                                                                            None                                                                                                                                                                                                                                                            Pressure Correction using reported PRESSURE OFFSET                                                                                                                                                                                                              None                                                                                                                                                                                                                                                            Salinity Recalculation using PRES_ADJ                                                                                                                                                                                                                           Pressure Correction using reported PRESSURE OFFSET                                                                                                                                                                                                              None                                                                                                                                                                                                                                                            Salinity Recalculation using PRES_ADJ                                                                                                                                                                                                                           Pressure Correction using reported PRESSURE OFFSET                                                                                                                                                                                                              None                                                                                                                                                                                                                                                            Salinity Recalculation using PRES_ADJ                                                                                                                                                                                                                           Pressure Correction using reported PRESSURE OFFSET                                                                                                                                                                                                              None                                                                                                                                                                                                                                                            Salinity Recalculation using PRES_ADJ                                                                                                                                                                                                                           Pressure Correction using reported PRESSURE OFFSET                                                                                                                                                                                                              None                                                                                                                                                                                                                                                            Salinity Recalculation using PRES_ADJ                                                                                                                                                                                                                           Pressure Correction using reported PRESSURE OFFSET                                                                                                                                                                                                              None                                                                                                                                                                                                                                                            Salinity Recalculation using PRES_ADJ                                                                                                                                                                                                                           202004281520052020042815200520200428152005202004281520172020042815201720200428152017202004281520282020042815202820200428152028202004281520402020042815204020200428152040202004281520522020042815205220200428152052202004281521052020042815210520200428152105JA  JA  JA  JA  JA  JA  ARFMARFMARFMARFMARFMARFMdecpfmtpdecpdecpdecpdecpV4_b2.6 V4_bV4_bV4_bV4_b                                                                                                                                                                                                                                                                                                                                                                                                201708032153092017080900525320170813215243201708182153092017082321525320170828215255IP  IP  IP  IP  IP  IP                                                                                                  G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�                                                                                                JA  JA  JA  JA  JA  JA  ARFMARFMARGQARFMARFMARFMfmtpdecprqcpfmtpfmtpfmtp2.6 V4_bpo_b2.6 2.6 2.6                                                                                                                                                                                                                                                                                                                                                                                                 201708032153102017080900525320170813215244201708182153102017082321525420170828215256IP  IP  QCP$IP  IP  IP                                                                                                  G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�                                3C                                                              JA  JA  JA  JA  JA  JA  ARGQARGQARFMARGQARGQARGQrqcprqcpfmtprqcprqcprqcppo_bt19c2.6 po_bpo_bpo_b                                                                                                                                                                                                                                                                                                                                                                                                201708032153102017080900525420170813215244201708182153102017082321525420170828215256QCP$QCP$IP  QCP$QCP$QCP$                                                                                                G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�3C              80000                           3C              3C              3C              JA  JA  JA  JA  JA  JA  ARGQARGQARGQARGQARGQARGQrqcprqcprqcprqcprqcprqcpt19cpo_b2.8dt19ct19ct19c                                                                                                                                                                                                                                                                                                                                                                                                201708032153112017080900525420170813215245201708182153112017082321525520170828215257QCP$QCP$QCP$QCP$QCP$QCP$                                                                                                G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�80000           3C              FB40            80000           80000           80000           JA  JA  JA  JA  JA  JA  ARGQARGQARGQARGQARGQARGQrqcprqcprqcprqcprqcprqcp2.8d2.8dt16b2.8d2.8d2.8d                                                                                                                                                                                                                                                                                                                                                                                                201708032153112017080900525420170813215245201708182153112017082321525520170828215257QCP$QCP$QCP$QCP$QCP$QCP$                                                                                                G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�FB40            FB40            10000           FB40            FB40            FB40            JA  JA  JA  JA  JA  JA  ARGQARGQARGQARGQARGQARGQrqcprqcprqcprqcprqcprqcpt16bt16bt19ct16bt16bt16b                                                                                                                                                                                                                                                                                                                                                                                                201708032153112017080900525420170813215245201708182153112017082321525520170828215257QCP$QCP$QCP$QCP$QCP$QCP$                                                                                                G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�10000           10000           80000           10000           10000           10000           JA  JA  JA  JA  JA  JA  ARUPARUPARUPARUPARUPARUPXXXXXXXXXXXXXXXXXXXXXXXX                                                                                                                                                                                                                                                                                                                                                                                                                        201708032156092017080900551320170813215506201708182156022017082321552520170828215536                                                                                                                        G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�                                                                                                JA  JA  JA  JA  JA  JA  ARFMARFMARFMARFMARFMARFMdecpdecpdecpdecpdecpdecpV4_bV4_bV4_bV4_bV4_bV4_b                                                                                                                                                                                                                                                                                                                                                                                                201708070652522017081206520420170817065252201708220652362017082706522820170901065228IP  IP  IP  IP  IP  IP                                                                                                  G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�                                                                                                JA  JA  JA  JA  JA  JA  ARFMARFMARFMARFMARFMARFMfmtpfmtpfmtpfmtpfmtpfmtp2.6 2.6 2.6 2.6 2.6 2.6                                                                                                                                                                                                                                                                                                                                                                                                 201708070654552017081206535320170817065445201708220654162017082706543320170901065415IP  IP  IP  IP  IP  IP                                                                                                  G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�                                                                                                JA  JA  JA  JA  JA  JA  ARGQARGQARGQARGQARGQARGQrqcprqcprqcprqcprqcprqcppo_bpo_bt19cpo_bpo_bpo_b                                                                                                                                                                                                                                                                                                                                                                                                201708070654552017081206535320170817065446201708220654162017082706543320170901065415QCP$QCP$QCP$QCP$QCP$QCP$                                                                                                G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�3C              3C              80000           3C              3C              3C              JA  JA  JA  JA  JA  JA  ARGQARGQARGQARGQARGQARGQrqcprqcprqcprqcprqcprqcpt19ct19c2.8dt19ct19ct19c                                                                                                                                                                                                                                                                                                                                                                                                201708070654562017081206535420170817065446201708220654172017082706543420170901065416QCP$QCP$QCP$QCP$QCP$QCP$                                                                                                G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�80000           80000           FB40            80000           80000           80000           JA  JA  JA  JA  JA  JA  ARGQARGQARGQARGQ    ARGQrqcprqcprqcprqcpjafcrqcp2.8dt16bpo_b2.8d1.0 2.8d                                                                                                                                                                                                                                                                                                                                                                                                201708070654562017081206535420170817065446201708220654172017082706543420170901065416QCP$QCP$QCP$QCP$    QCP$                                                                                                G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�FB40            10000           3C              FB40                            FB40            JA  JA  JA  JA  JA  JA      ARGQ    ARGQARGQARGQjafcrqcpjafcrqcprqcprqcp1.0 2.8d1.0 t16bt16bt16b                                                                                                                                                                                                                                                                                                                                                                                                201708070654562017081206535420170817065447201708220654172017082706543420170901065416    QCP$    QCP$QCP$QCP$                                                                                                G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�                FB40                            10000           10000           10000           JA  JA  JA  JA  JA  JA  ARGQ    ARGQ    ARGQ    rqcpjafcrqcpjafcrqcpjafct16b1.0 t16b1.0 2.8d1.0                                                                                                                                                                                                                                                                                                                                                                                                 201708070654562017081206535520170817065447201708220654182017082706543420170901065417QCP$    QCP$    QCP$                                                                                                    G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�10000                           10000                           FB40                            JA  JA  JA  JA  JA  JA  ARUPARUPARUPARUPARUPARUPXXXXXXXXXXXXXXXXXXXXXXXX                                                                                                                                                                                                                                                                                                                                                                                                                        201708070657232017081206561720170817065728201708220656582017082706571920170901065708                                                                                                                        G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�                                                                                                JM  JM  JM  JM  JM  JM  ARSQARSQARSQARSQARSQARSQJMQCJMQCJMQCJMQCJMQCJMQC2.0 2.0 2.0 2.0 2.0 2.0                                                                                                                                                                                                                                                                                                                                                                                                 202004280000002020042800000020200428000000202004280000002020042800000020200428000000CF  CF  CF  CF  CF  CF  PSAL_ADJUSTED_QCPSAL_ADJUSTED_QCTEMP_ADJUSTED_QCPSAL_ADJUSTED_QCPSAL_ADJUSTED_QCPSAL_ADJUSTED_QC    ?�  >���>L��?333>���   ?�  >���@�  ?333@�  G�O�G�O�G�O�G�O�G�O�G�O�                                                                                                JM  JM  JM  JM  JM  JM  ARSQARCAARSQARSQARCAARSQJMQCJMQCJMQCJMQCJMQCJMQC2.0 2.0 2.0 2.0 2.0 2.0                                                                                                                                                                                                                                                                                                                                                                                                 202004280000002020042806201720200428000000202004280000002020042806205220200428000000CF  CV  CF  CF  IP  CF  TEMP_ADJUSTED_QCPRES_ADJUSTED   PSAL_ADJUSTED_QCTEMP_ADJUSTED_QCPRES_ADJUSTED   TEMP_ADJUSTED_QC    G�O�>���>L��G�O�>���   G�O�@�  >L��G�O�>���G�O�G�O�G�O�G�O�G�O�G�O�                                                                                                JM  JM  JM  JM  JM  JM  ARCAARCAARCAARCAARCAARCAJMQCJMQCJMQCJMQCJMQCJMQC2.0 2.0 2.0 2.0 2.0 2.0                                                                                                                                                                                                                                                                                                                                                                                                 202004280620052020042806201720200428062028202004280620402020042806205220200428062105IP  CV  CV  CV  CV  IP  PRES_ADJUSTED   PSAL_ADJUSTED   PRES_ADJUSTED   PRES_ADJUSTED   PSAL_ADJUSTED   PRES_ADJUSTED   G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�                                                                                                JM  JM  JM  JM  JM  JM  ARCAARCAARCAARCAARCAARCAJMQCJMTMJMQCJMQCJMTMJMQC2.0 1.0 2.0 2.0 1.0 2.0                                                                                                                                                                                                                                                                                                                                                                                                 202004280620052020080723080920200428062028202004280620402020080723081220200428062105CV  CV  CV  CV  CV  CV  PSAL_ADJUSTED   PSAL_ADJUSTED   PSAL_ADJUSTED   PSAL_ADJUSTED   PSAL_ADJUSTED   PSAL_ADJUSTED   G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�                                                                                                JM  JM  JM  JM  JM  JM  ARCAARSQARCAARCAARSQARCAJMTMOW  JMTMJMTMOW  JMTM1.0 1.1 1.0 1.0 1.1 1.0                                                                 2017V1                                                                                                                                                                                          2017V1                                                                                                                          202008072308092020080815561220200807230810202008072308112020080815562220200807230813CV  CV  CV  CV  CV  CV  PSAL_ADJUSTED   PSAL_ADJUSTED   PSAL_ADJUSTED   PSAL_ADJUSTED   PSAL_ADJUSTED   PSAL_ADJUSTED   G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�                                                                                                JM  JA  JM  JM  JA  JM  ARSQARDUARSQARSQARDUARSQOW  XXXXOW  OW  XXXXOW  1.1     1.1 1.1     1.1 2017V1                                                                                                                          2017V1                                                          2017V1                                                                                                                          2017V1                                                          202008081556092020121508150520200808155615202008081556182020121508150520200808155625CV      CV  CV      CV  PSAL_ADJUSTED                   PSAL_ADJUSTED   PSAL_ADJUSTED                   PSAL_ADJUSTED   G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�                                                                                                JA  IF  JA  JA  IF  JA  ARDUARGQARDUARDUARGQARDUXXXXMIMAXXXXXXXXMIMAXXXX    4.0         4.0                                                                                                                                                                                                                                                                                                                                                                                                     202012150815052020121508572720201215081505202012150815052020121508572720201215081505    QCP$        QCP$                                                                                                    G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�                                                                                                IF      IF  IF      IF  ARGQ    ARGQARGQ    ARGQMIMA    MIMAMIMA    MIMA4.0     4.0 4.0     4.0                                                                                                                                                                                                                                                                                                                                                                                                 20201215085727              2020121508572720201215085727              20201215085727QCP$    QCP$QCP$    QCP$                                                                                                G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�                                                                                                