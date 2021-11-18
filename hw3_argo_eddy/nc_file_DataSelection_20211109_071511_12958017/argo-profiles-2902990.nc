CDF      
      	DATE_TIME         	STRING256         STRING64   @   STRING32       STRING16      STRING8       STRING4       STRING2       N_PROF        N_PARAM       N_LEVELS   V   N_CALIB       	N_HISTORY             	   title         Argo float vertical profile    institution       JMA    source        
Argo float     history       2021-11-09T07:15:18Z creation      
references        (http://www.argodatamgt.org/Documentation   comment           user_manual_version       3.03   Conventions       Argo-3.0 CF-1.6    featureType       trajectoryProfile         @   	DATA_TYPE                  	long_name         	Data type      
_FillValue                    4�   FORMAT_VERSION                 	long_name         File format version    
_FillValue                    4�   HANDBOOK_VERSION               	long_name         Data handbook version      
_FillValue                    4�   REFERENCE_DATE_TIME                 	long_name         !Date of reference for Julian days      conventions       YYYYMMDDHHMISS     
_FillValue                    4�   DATE_CREATION                   	long_name         Date of file creation      conventions       YYYYMMDDHHMISS     
_FillValue                    4�   DATE_UPDATE                 	long_name         Date of update of this file    conventions       YYYYMMDDHHMISS     
_FillValue                    4�   PLATFORM_NUMBER                   	long_name         Float unique identifier    conventions       WMO float identifier : A9IIIII     
_FillValue                  (  5    PROJECT_NAME                  	long_name         Name of the project    
_FillValue                 @  5(   PI_NAME                   	long_name         "Name of the principal investigator     
_FillValue                 @  6h   STATION_PARAMETERS           	            	long_name         ,List of available parameters for the station   conventions       Argo reference table 3     
_FillValue                  �  7�   CYCLE_NUMBER               	long_name         Float cycle number     conventions       <0..N, 0 : launch cycle (if exists), 1 : first complete cycle   
_FillValue         ��        8�   	DIRECTION                  	long_name         !Direction of the station profiles      conventions       -A: ascending profiles, D: descending profiles      
_FillValue                    8�   DATA_CENTRE                   	long_name         .Data centre in charge of float data processing     conventions       Argo reference table 4     
_FillValue                    8�   DC_REFERENCE                  	long_name         (Station unique identifier in data centre   conventions       Data centre convention     
_FillValue                  �  8�   DATA_STATE_INDICATOR                  	long_name         1Degree of processing the data have passed through      conventions       Argo reference table 6     
_FillValue                    9`   	DATA_MODE                  	long_name         Delayed mode or real time data     conventions       >R : real time; D : delayed mode; A : real time with adjustment     
_FillValue                    9t   PLATFORM_TYPE                     	long_name         Type of float      
_FillValue                  �  9|   FLOAT_SERIAL_NO                   	long_name         Serial number of the float     
_FillValue                  P  :   FIRMWARE_VERSION                  	long_name         Instrument version     
_FillValue                  P  :l   WMO_INST_TYPE                     	long_name         Coded instrument type      conventions       Argo reference table 8     
_FillValue                    :�   JULD               	long_name         ?Julian day (UTC) of the station relative to REFERENCE_DATE_TIME    standard_name         time   units         "days since 1950-01-01 00:00:00 UTC     conventions       8Relative julian days with decimal part (as parts of day)   
_FillValue        A.�~       axis      T         (  :�   JULD_QC                	long_name         Quality on Date and Time   conventions       Argo reference table 2     
_FillValue                    :�   JULD_LOCATION                  	long_name         @Julian day (UTC) of the location relative to REFERENCE_DATE_TIME   units         "days since 1950-01-01 00:00:00 UTC     conventions       8Relative julian days with decimal part (as parts of day)   
_FillValue        A.�~          (  ;    LATITUDE               	long_name         &Latitude of the station, best estimate     standard_name         latitude   units         degree_north   
_FillValue        @�i�       	valid_min         �V�        	valid_max         @V�        axis      Y         (  ;(   	LONGITUDE                  	long_name         'Longitude of the station, best estimate    standard_name         	longitude      units         degree_east    
_FillValue        @�i�       	valid_min         �f�        	valid_max         @f�        axis      X         (  ;P   POSITION_QC                	long_name         ,Quality on position (latitude and longitude)   conventions       Argo reference table 2     
_FillValue                    ;x   POSITIONING_SYSTEM                    	long_name         Positioning system     
_FillValue                  (  ;�   PROFILE_PRES_QC                	long_name         #Global quality flag of PRES profile    conventions       Argo reference table 2a    
_FillValue                    ;�   PROFILE_TEMP_QC                	long_name         #Global quality flag of TEMP profile    conventions       Argo reference table 2a    
_FillValue                    ;�   PROFILE_PSAL_QC                	long_name         #Global quality flag of PSAL profile    conventions       Argo reference table 2a    
_FillValue                    ;�   VERTICAL_SAMPLING_SCHEME                  	long_name         Vertical sampling scheme   conventions       Argo reference table 16    
_FillValue                    ;�   CONFIG_MISSION_NUMBER                  	long_name         'Float's mission number for each profile    conventions       @0..N, 0 : launch mission (if exists), 1 : first complete mission   
_FillValue         ��        @�   PRES         
      
   	long_name         SEA PRESSURE   standard_name         sea_water_pressure     
_FillValue        G�O�   units         decibar    	valid_min                	valid_max         F;�    C_format      %7.1f      FORTRAN_format        F7.1   
resolution        =���   axis      Z        �  @�   PRES_QC          
         	long_name         quality flag   conventions       Argo reference table 2     
_FillValue                 �  G�   PRES_ADJUSTED            
      
   	long_name         SEA PRESSURE   standard_name         sea_water_pressure     
_FillValue        G�O�   units         decibar    	valid_min                	valid_max         F;�    C_format      %7.1f      FORTRAN_format        F7.1   
resolution        =���   axis      Z        �  I<   PRES_ADJUSTED_QC         
         	long_name         quality flag   conventions       Argo reference table 2     
_FillValue                 �  O�   PRES_ADJUSTED_ERROR          
         	long_name         SEA PRESSURE   
_FillValue        G�O�   units         decibar    C_format      %7.1f      FORTRAN_format        F7.1   
resolution        =���     �  Q�   TEMP         
      	   	long_name         $SEA TEMPERATURE IN SITU ITS-90 SCALE   standard_name         sea_water_temperature      
_FillValue        G�O�   units         degree_Celsius     	valid_min         �      	valid_max         B      C_format      %9.3f      FORTRAN_format        F9.3   
resolution        :�o     �  X\   TEMP_QC          
         	long_name         quality flag   conventions       Argo reference table 2     
_FillValue                 �  _   TEMP_ADJUSTED            
      	   	long_name         $SEA TEMPERATURE IN SITU ITS-90 SCALE   standard_name         sea_water_temperature      
_FillValue        G�O�   units         degree_Celsius     	valid_min         �      	valid_max         B      C_format      %9.3f      FORTRAN_format        F9.3   
resolution        :�o     �  `�   TEMP_ADJUSTED_QC         
         	long_name         quality flag   conventions       Argo reference table 2     
_FillValue                 �  g|   TEMP_ADJUSTED_ERROR          
         	long_name         $SEA TEMPERATURE IN SITU ITS-90 SCALE   
_FillValue        G�O�   units         degree_Celsius     C_format      %9.3f      FORTRAN_format        F9.3   
resolution        :�o     �  i,   PSAL         
      	   	long_name         PRACTICAL SALINITY     standard_name         sea_water_salinity     
_FillValue        G�O�   units         psu    	valid_min                	valid_max         B(     C_format      %9.3f      FORTRAN_format        F9.3   
resolution        :�o     �  o�   PSAL_QC          
         	long_name         quality flag   conventions       Argo reference table 2     
_FillValue                 �  v�   PSAL_ADJUSTED            
      	   	long_name         PRACTICAL SALINITY     standard_name         sea_water_salinity     
_FillValue        G�O�   units         psu    	valid_min                	valid_max         B(     C_format      %9.3f      FORTRAN_format        F9.3   
resolution        :�o     �  xL   PSAL_ADJUSTED_QC         
         	long_name         quality flag   conventions       Argo reference table 2     
_FillValue                 �     PSAL_ADJUSTED_ERROR          
         	long_name         PRACTICAL SALINITY     
_FillValue        G�O�   units         psu    C_format      %9.3f      FORTRAN_format        F9.3   
resolution        :�o     �  ��   	PARAMETER               	            	long_name         /List of parameters with calibration information    conventions       Argo reference table 3     
_FillValue                  �  �l   SCIENTIFIC_CALIB_EQUATION               	            	long_name         'Calibration equation for this parameter    
_FillValue                    �\   SCIENTIFIC_CALIB_COEFFICIENT            	            	long_name         *Calibration coefficients for this equation     
_FillValue                    �\   SCIENTIFIC_CALIB_COMMENT            	            	long_name         .Comment applying to this parameter calibration     
_FillValue                    �\   SCIENTIFIC_CALIB_DATE               	             	long_name         Date of calibration    
_FillValue                  �  �\   HISTORY_INSTITUTION                      	long_name         "Institution which performed action     conventions       Argo reference table 4     
_FillValue                    �0   HISTORY_STEP                     	long_name         Step in data processing    conventions       Argo reference table 12    
_FillValue                    �D   HISTORY_SOFTWARE                     	long_name         'Name of software which performed action    conventions       Institution dependent      
_FillValue                    �X   HISTORY_SOFTWARE_RELEASE                     	long_name         2Version/release of software which performed action     conventions       Institution dependent      
_FillValue                    �l   HISTORY_REFERENCE                        	long_name         Reference of database      conventions       Institution dependent      
_FillValue                 @  ��   HISTORY_DATE                      	long_name         #Date the history record was created    conventions       YYYYMMDDHHMISS     
_FillValue                  H  ��   HISTORY_ACTION                       	long_name         Action performed on data   conventions       Argo reference table 7     
_FillValue                    �   HISTORY_PARAMETER                        	long_name         (Station parameter action is performed on   conventions       Argo reference table 3     
_FillValue                  P  �   HISTORY_START_PRES                    	long_name          Start pressure action applied on   
_FillValue        G�O�   units         decibar         �l   HISTORY_STOP_PRES                     	long_name         Stop pressure action applied on    
_FillValue        G�O�   units         decibar         ��   HISTORY_PREVIOUS_VALUE                    	long_name         +Parameter/Flag previous value before action    
_FillValue        G�O�        ��   HISTORY_QCTEST                       	long_name         <Documentation of tests performed, tests failed (in hex form)   conventions       EWrite tests performed when ACTION=QCP$; tests failed when ACTION=QCF$      
_FillValue                  P  ��Argo profile    3.0 1.2 19500101000000  20211109071519  20211109071519  2902990 2902990 2902990 2902990 2902990 Routine-JMA                                                     Routine-JMA                                                     Routine-JMA                                                     Routine-JMA                                                     Routine-JMA                                                     JMA                                                             JMA                                                             JMA                                                             JMA                                                             JMA                                                             PRES            TEMP            PSAL            PRES            TEMP            PSAL            PRES            TEMP            PSAL            PRES            TEMP            PSAL            PRES            TEMP            PSAL               2   3   4   5   6AAAAA   JAJAJAJAJA  53310405                        53352650                        53400633                        53449017                        53498100                        2C  2C  2C  2C  2C  DDDDD                                                                                                                                                                   OIN-15JAP-ARL-16OIN-15JAP-ARL-16OIN-15JAP-ARL-16OIN-15JAP-ARL-16OIN-15JAP-ARL-165607A09         5607A09         5607A09         5607A09         5607A09         844 844 844 844 844 @�`[�S@��GL�X@��W�@� �fff@� `��11111   @�`[�S@��GL�X@��W�@� �fff@� `��@:st�j~�@:�=p��@:�\(��@;��$�@;Q���l�@`5�E��@`&I�^5@` bM��@`��O�<@`(Z�111111   ARGOS   ARGOS   ARGOS   ARGOS   ARGOS   AAAAA   AAAAA   AAAAA   Primary sampling: discrete [SBE41CP pumping for 19 seconds per measurements]                                                                                                                                                                                    Primary sampling: discrete [SBE41CP pumping for 19 seconds per measurements]                                                                                                                                                                                    Primary sampling: discrete [SBE41CP pumping for 19 seconds per measurements]                                                                                                                                                                                    Primary sampling: discrete [SBE41CP pumping for 19 seconds per measurements]                                                                                                                                                                                    Primary sampling: discrete [SBE41CP pumping for 19 seconds per measurements]                                                                                                                                                                                                   >L��@�  A!��A{33A�  A�33A�  B33B#��B733BH��Bp��B���B�  B���B���Bۙ�B�  C33C33C� C ��C*ffC3�fC>  CG��C\�Cq  C�@ C�Y�C��C�&fC��fC�ٚC�33C��C�@ C�  C��3C��C��3D� D  DٚD� D� D�3D fD$��D*  D/&fD4�D9�D=�fDB�3DH  DM3DR9�DV��D\  Da  De��Dk3Do��Dt�3Dz3D�I�D�s3D��fD�  D�S3D�s3D���D���D�@ D��fD��fD�#3D�S3DԐ D���D�3D�I�D�� D�� D�f>���@�  A!��As33A�  A�33A���B33B ffB4ffBI��Br  B�33B���B�  Bə�B�ffB�ffC� C� C�C �C*�C4L�C>L�CG�fC[�3Co�3C�� C�  C�  C��C���C�33C��3C�&fC��C��3C���C��3C��3D  D  D�D  DٚD�3D�3D%3D*3D/�D3��D9  D=�fDB��DG�3DM  DQ� DV� D[ٚD`� Df�Dk  Do�3Du  Dz  D�@ D�� D���D�	�D�P D�y�D�ɚD�	�D�Y�D��3D�� D�  D�S3Dԓ3D�ٚD�  D�FfD�fD��3D�3?���@���A��Ai��A�ffA�33A�33B  B$  B733BI��Bo33B�  B�ffB�33B���B�  B�33C� C��C33C L�C*��C4�C>L�CG�fC[��Co� C��3C�&fC�&fC�L�C��3C�@ C��fC��C�� Cی�C��C�  C��D�3DٚDfD��D��D  D ,�D%fD*�D/,�D433D9  D>�DB�3DH  DM�DR3DW�D[�3Da&fDf  Dk�Dp�Du  Dz  D�33D��3D��3D� D�C3D�p D�ɚD� D�@ D�� D���D�	�D�<�Dԓ3D��fD�	�D�FfD퉚D�� D�  >L��@�  A)��AvffA���A���A���B  B"ffB3��BJ��Bs��B�33B�  B���B�ffB�  B���C�fC  C��C�fC)��C433C>��CG�3C[��Co��C�ٚC��C�L�C��C�ٚC�  C���C�&fC�L�C�@ C�33C��3C�  D�3D�D�D�DٚDfD �D%�D*,�D/�D4fD9�D>�DC&fDH  DM  DQ��DW�D\�D`��DeٚDk�Dp  Du  Dz  D�FfD��3D���D�	�D�L�D���D�ɚD� D�P D�� D�ٚD��D�VfDԌ�D���G�O�G�O�G�O�G�O�G�O�>L��@�  A  Al��A���A�33A�  BffB!33B6ffBI33Bp  B���B���B���B���B���BC��CffC�C� C)� C4L�C>�CG�3C[�Co�C��3C�33C�ffC�L�C��C��fC�� C�@ C��C�&fC�L�C�� C�&fD�fD�fD� D,�D�D3D �D%�D*�D/�D4fD93D=�fDB��DG�3DLٚDQ� DV�fD\  Da&fDf  Dj��Dp  Dt�3Dy�fD�I�D��fD�� D���G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111     1111111111111111111111111111111111111111111111111111111111111111111111                  >L��@�  A!��A{33A�  A�33A�  B33B#��B733BH��Bp��B���B�  B���B���Bۙ�B�  C33C33C� C ��C*ffC3�fC>  CG��C\�Cq  C�@ C�Y�C��C�&fC��fC�ٚC�33C��C�@ C�  C��3C��C��3D� D  DٚD� D� D�3D fD$��D*  D/&fD4�D9�D=�fDB�3DH  DM3DR9�DV��D\  Da  De��Dk3Do��Dt�3Dz3D�I�D�s3D��fD�  D�S3D�s3D���D���D�@ D��fD��fD�#3D�S3DԐ D���D�3D�I�D�� D�� D�f>���@�  A!��As33A�  A�33A���B33B ffB4ffBI��Br  B�33B���B�  Bə�B�ffB�ffC� C� C�C �C*�C4L�C>L�CG�fC[�3Co�3C�� C�  C�  C��C���C�33C��3C�&fC��C��3C���C��3C��3D  D  D�D  DٚD�3D�3D%3D*3D/�D3��D9  D=�fDB��DG�3DM  DQ� DV� D[ٚD`� Df�Dk  Do�3Du  Dz  D�@ D�� D���D�	�D�P D�y�D�ɚD�	�D�Y�D��3D�� D�  D�S3Dԓ3D�ٚD�  D�FfD�fD��3D�3?���@���A��Ai��A�ffA�33A�33B  B$  B733BI��Bo33B�  B�ffB�33B���B�  B�33C� C��C33C L�C*��C4�C>L�CG�fC[��Co� C��3C�&fC�&fC�L�C��3C�@ C��fC��C�� Cی�C��C�  C��D�3DٚDfD��D��D  D ,�D%fD*�D/,�D433D9  D>�DB�3DH  DM�DR3DW�D[�3Da&fDf  Dk�Dp�Du  Dz  D�33D��3D��3D� D�C3D�p D�ɚD� D�@ D�� D���D�	�D�<�Dԓ3D��fD�	�D�FfD퉚D�� D�  >L��@�  A)��AvffA���A���A���B  B"ffB3��BJ��Bs��B�33B�  B���B�ffB�  B���C�fC  C��C�fC)��C433C>��CG�3C[��Co��C�ٚC��C�L�C��C�ٚC�  C���C�&fC�L�C�@ C�33C��3C�  D�3D�D�D�DٚDfD �D%�D*,�D/�D4fD9�D>�DC&fDH  DM  DQ��DW�D\�D`��DeٚDk�Dp  Du  Dz  D�FfD��3D���D�	�D�L�D���D�ɚD� D�P D�� D�ٚD��D�VfDԌ�D���G�O�G�O�G�O�G�O�G�O�>L��@�  A  Al��A���A�33A�  BffB!33B6ffBI33Bp  B���B���B���B���B���BC��CffC�C� C)� C4L�C>�CG�3C[�Co�C��3C�33C�ffC�L�C��C��fC�� C�@ C��C�&fC�L�C�� C�&fD�fD�fD� D,�D�D3D �D%�D*�D/�D4fD93D=�fDB��DG�3DLٚDQ� DV�fD\  Da&fDf  Dj��Dp  Dt�3Dy�fD�I�D��fD�� D���G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111     1111111111111111111111111111111111111111111111111111111111111111111111                  G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�A�-A�(�A�1'A�;dA�"�A���A��A�{A�&�A�VA���A��AľwA�t�A���A�Q�A�  A��/A�  A��yA�=qA��A�=qA��hA��A�O�A���A�  A��
A���A��7A�M�A~��Ax�yAqhsAh�RA`��ATz�AK�A@�A9t�A.�/A%�TA�DA`BA�PA(�AK�@�I�@��@�bN@˾w@��^@�x�@�?}@�r�@�o@�r�@�&�@�t�@�r�@�=q@���@�+@�(�@��@z��@qhs@`�u@P��@Fȴ@@Ĝ@9��@3��@,(�@*�H@#�m@�j@�@�T@@�P@(�@	%@`B@33A�~�A��DA�A�A��A��A��A�`BA�{A��
AͼjA�^5A�r�A�+A���A�oA�n�A�ƨA�;dA�hsA�A��DA� �A���A�5?A��A�"�A��;A���A�%A���A�~�AzZAr��Ak��Acx�AZ�AS&�AE�A7�A0ĜA(�`A#ƨA��A/A(�A�+@��@�G�@���@�\)@�;d@�ȴ@���@���@�j@�b@��@�x�@�1@��@��@���@�p�@�r�@�ȴ@y��@j�!@]V@P��@G\)@B^5@:�H@2�\@,�@&5?@ ��@��@  @�!@�+@dZ@b@�T@�F?��wA��A���A���A��^A�A�!AٶFA�33AѴ9A͟�A��TA���A�E�A�n�A���A���A�33A��yA�VA�9XA�VA��A���A�$�A�v�A�33A��A�"�A�?}A���A�G�A�=qA~�DAy�Aq��Ab�`AV9XAN �AB�`A=�A1/A&I�A �9A`BAS�A�HA ȴ@�$�@�|�@Ѻ^@��
@�V@��F@��
@���@��@�+@��^@�7L@�z�@��@���@�1'@��\@{ƨ@xb@d1@["�@P��@F�R@BM�@<I�@8Q�@3t�@+"�@"�@��@S�@�y@��@$�@	7L@��@1@ ��?�7LA�-A�A�A�n�A���A�A�A��A�dZA���A���A�XA���A��wA�v�A�9XA�jA�|�A�33A��A�ȴA�A�{A���A�|�A��#A��HA�oA�A�ffA�bNA{XAvZAoVAeS�AW�AO��AB��A9oA5�A*  A!��AA�A�@�%@�|�@柾@�z�@���@�@��T@���@���@�@���@�~�@��@�;d@�O�@���@�?}@�=q@�w@~��@|Z@m�@\Z@W�P@N@HQ�@?|�@8  @.{@'\)@#33@K�@33@r�@��@�G�O�G�O�G�O�G�O�G�O�A���A���A�ĜA�ĜA�ȴA���A��FA��RA���A旍Aۛ�A��A�VA�"�A��mA��A���A�$�A�bNA���A�1'A�~�A�oA��A��A�{A�JA�p�A�VA��A��`A��A{K�Ax�uArQ�Aj�uAb^5AV�AMdZA?A6 �A1��A)A�DA �AA&�@�bN@�`B@��@�&�@�l�@�ƨ@�%@��@��@��@��@���@���@��m@�1'@|��@q��@n$�@i%@]/@W+@HQ�@C�
G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111     1111111111111111111111111111111111111111111111111111111111111111111111                  G�O�A�(�A�1'A�;dA�"�A���A��A�{A�&�A�VA���A��AľwA�t�A���A�Q�A�  A��/A�  A��yA�=qA��A�=qA��hA��A�O�A���A�  A��
A���A��7A�M�A~��Ax�yAqhsAh�RA`��ATz�AK�A@�A9t�A.�/A%�TA�DA`BA�PA(�AK�@�I�@��@�bN@˾w@��^@�x�@�?}@�r�@�o@�r�@�&�@�t�@�r�@�=q@���@�+@�(�@��@z��@qhs@`�u@P��@Fȴ@@Ĝ@9��@3��@,(�@*�H@#�m@�j@�@�T@@�P@(�@	%@`B@33G�O�A��DA�A�A��A��A��A�`BA�{A��
AͼjA�^5A�r�A�+A���A�oA�n�A�ƨA�;dA�hsA�A��DA� �A���A�5?A��A�"�A��;A���A�%A���A�~�AzZAr��Ak��Acx�AZ�AS&�AE�A7�A0ĜA(�`A#ƨA��A/A(�A�+@��@�G�@���@�\)@�;d@�ȴ@���@���@�j@�b@��@�x�@�1@��@��@���@�p�@�r�@�ȴ@y��@j�!@]V@P��@G\)@B^5@:�H@2�\@,�@&5?@ ��@��@  @�!@�+@dZ@b@�T@�F?��wA��A���A���A��^A�A�!AٶFA�33AѴ9A͟�A��TA���A�E�A�n�A���A���A�33A��yA�VA�9XA�VA��A���A�$�A�v�A�33A��A�"�A�?}A���A�G�A�=qA~�DAy�Aq��Ab�`AV9XAN �AB�`A=�A1/A&I�A �9A`BAS�A�HA ȴ@�$�@�|�@Ѻ^@��
@�V@��F@��
@���@��@�+@��^@�7L@�z�@��@���@�1'@��\@{ƨ@xb@d1@["�@P��@F�R@BM�@<I�@8Q�@3t�@+"�@"�@��@S�@�y@��@$�@	7L@��@1@ ��?�7LG�O�A�A�A�n�A���A�A�A��A�dZA���A���A�XA���A��wA�v�A�9XA�jA�|�A�33A��A�ȴA�A�{A���A�|�A��#A��HA�oA�A�ffA�bNA{XAvZAoVAeS�AW�AO��AB��A9oA5�A*  A!��AA�A�@�%@�|�@柾@�z�@���@�@��T@���@���@�@���@�~�@��@�;d@�O�@���@�?}@�=q@�w@~��@|Z@m�@\Z@W�P@N@HQ�@?|�@8  @.{@'\)@#33@K�@33@r�@��@�G�O�G�O�G�O�G�O�G�O�G�O�A���A�ĜA�ĜA�ȴA���A��FA��RA���A旍Aۛ�A��A�VA�"�A��mA��A���A�$�A�bNA���A�1'A�~�A�oA��A��A�{A�JA�p�A�VA��A��`A��A{K�Ax�uArQ�Aj�uAb^5AV�AMdZA?A6 �A1��A)A�DA �AA&�@�bN@�`B@��@�&�@�l�@�ƨ@�%@��@��@��@��@���@���@��m@�1'@|��@q��@n$�@i%@]/@W+@HQ�@C�
G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O� 1111111111111111111111111111111111111111111111111111111111111111111111111111111111111 111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111 11111111111111111111111111111111111111111111111111111111111111111111111111111111      111111111111111111111111111111111111111111111111111111111111111111111                  G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�B
�=B
�DB
�=B
�7B
�B
ɺB
s�B
 �B
y�B
�bB
��Bn�B�!B!�B.B49B�B�B��B\BB�B�B��B�LB��B�7BA�B"�BPB
�sB
�XB
�PB
l�B
C�B
�B	�B	�LB	�bB	hsB	K�B	,B	%�B	bB��BŢBB��B�B�VB�+B�DB�hB��B��B�B��B�5B�`B	B	B	PB	�B	#�B	>wB	N�B	� B	��B	�dB	��B	�BB	�B	��B
B
PB
�B
�B
33B
<jB
A�B
H�B
N�B
VB
[#B
dZB
iyB
P�B
P�B
Q�B
S�B
S�B
T�B
K�BF�B�B33Bo�B��B�BH�B8RBBPBPB+B��B�B��BŢB�}B�B��Bt�BF�B$�B
��B
��B
�B
u�B
P�B
'�B
  B	��B	�B	x�B	F�B	33B	�B	\B	B�B�fB��BB��B�bB�JB�bB�{B��B�'BɺB��B�/B�B��B	
=B	�B	O�B	_;B	n�B	}�B	�hB	�B	ĜB	�B	�ZB	�B	��B
B
PB
�B
$�B
/B
6FB
C�B
L�B
T�B
]/B
bNB
gmB
p�B-B,B-B0!B
�B
��BŢBPBF�B`BBv�B�=B�Bx�BjB\)BF�BB��B�B�B�B�^B��B�uB�DBm�BS�B�B
��B
�B
��B
�PB
t�B
D�B	��B	ÖB	��B	~�B	_;B	49B	{B	B��B�B�HB��B�qB��B��B��B��B��B��B�?B��B�B�;B��B	)�B	C�B	R�B	aHB	}�B	�bB	��B	�3B	��B	��B	�NB	�B	��B
B
JB
�B
(�B
1'B
8RB
@�B
G�B
S�B
^5B
dZB
iyB
q�B
x�B
��B
��B
��B
�{B
�=B
dZB
�B
��B
�HB
�B!�B�DB�qBȴB�fB��B�B�yB�BŢB�FB��B�VBu�B]/BT�B6FB%B
�B
ƨB
�!B
�B
e`B
@�B
bB	�)B	�LB	{�B	F�B	A�B	�B��B�B�TB��B��BƨB�qB�LB�'B�B�BÖB��B�B�B��B	+B	0!B	S�B	gmB	v�B	�B	��B	B	��B	ȴB	�TB	�B	��B	��B	��B
1B
�B
!�B
'�B
-B
49B
;dB
D�B
H�G�O�G�O�G�O�G�O�G�O�B
�9B
�-B
�-B
�-B
�3B
�3B
�!B
�!B
��B
�VB
�?B
��BQ�B��B�BDB	7B��B��B�yB�NB�/B��B�9B��B�JBp�BcTB>wBB
�wB
��B
~�B
q�B
P�B
)�B
+B	�TB	��B	iyB	@�B	2-B	 �B��B�HB�B��B�3B��B��B�^B��B��B�BB	JB	PB	1'B	H�B	R�B	]/B	l�B	��B	ĜB	ƨB	��B	��B	�ZB	�`B	�B	�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111     1111111111111111111111111111111111111111111111111111111111111111111111                  G�O�G�O�B
�=B
��B
�BB
�\B
xlB
'�B
}B
��B
�[Bp�B��B# B/OB6BkBEB��B}B�B�[B�eB�&B��B��B�rBB[B#�B"B
�yB
�^B
�"B
mwB
D�B
�B	�/B	��B	��B	iyB	M6B	-CB	'B	4B��B�tBÖB�[B�oB�\B�1B�B� B�7B�FB�wB�BބB��B	GB	mB	�B	�B	$ZB	>�B	OB	�4B	�>B	��B	�B	�\B	�B	��B
 B
PB
�B
�B
3MB
<�B
A�B
H�B
N�B
VB
[WB
dZB
i_G�O�B
P�B
Q�B
S�B
S�B
UgB
U�BPHB�ZB8�Bs�B��B�9BJ#B:B�B�BBzB��B��BѝB�?B��B�IB��Bu�BGzB%�B
�B
ΥB
�WB
v�B
Q�B
(�B
 B	��B	��B	z�B	G�B	4TB	dB	}B	�B�oB�B��B��B�4B�4B��B��B�MB� B��B�XB�oBݲB�B�B	
=B	 B	PB	_�B	o B	~(B	��B	�IB	��B	�9B	�tB	�B	��B
3B
�B
�B
$�B
/5B
6`B
C�B
L�B
UB
]/B
bNB
g�B
p�G�O�G�O�B-]B1�B-B
��B�EBTBJ�Bh$Bx�B��B�aBy�Bk�B]�BH�BB��B�B�B׍B��B��B�B�JBnIBT�B�B
��B
�?B
�TB
�B
u�B
F�B	��B	ĶB	�-B	�B	`�B	5�B	MB	�B	 B�kB��B��B�B��B�pB�9B�$B�IB�B��B� B�QB��B��B	*0B	DB	S[B	a�B	~]B	�}B	��B	�hB	��B	�,B	�B	�B	�B
9B
dB
�B
)B
1AB
8lB
@�B
G�B
TB
^OB
dtB
i�B
q�B
x�G�O�G�O�B
��B
��B
��B
o�B
��B
��B
�B
�aB&�B�jB�HB˒B�XB�%B�B�eB��B��B��B��B��BwfB^BU�B72B�B
�}B
�+B
�[B
��B
fLB
A�B
B	�IB	�	B	}<B	GEB	B�B	�B��B�!B��B��B��B�zB�BB��B�B�cB��B��B�)B�7B��B��B	_B	0�B	T{B	g�B	wB	�GB	��B	ªB	�B	�B	�nB	�B	��B	��B	�B
fB
�B
!�B
(
B
-)B
4TB
;B
D�B
H�G�O�G�O�G�O�G�O�G�O�G�O�G�O�B
�-B
�-B
�3B
�MB
�;B
�vB
��B
�B
��B�BU�B�.B��B�B
rB B�B�KB� B�OBB�%B�RB�BqABdZB?cB�B
�HB
��B
cB
r|B
Q�B
+B
�B	�B	�B	j�B	A B	3MB	"�B�XB�B��B�jB��B�B�jB�dBуB��B�B	B	6B	1vB	IB	S[B	]�B	l�B	�_B	�B	��B	��B	� B	�tB	�B	�B	�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�  111111111111111111111111111111111111111111111111111111111111111111111111111111111111 1111111111111111111111111111111111111111111111111111111111111111111111111111111111111  111111111111111111111111111111111111111111111111111111111111111111111111111111111111  1111111111111111111111111111111111111111111111111111111111111111111111111111111       11111111111111111111111111111111111111111111111111111111111111111111                  G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�PRES            TEMP            PSAL            PRES            TEMP            PSAL            PRES            TEMP            PSAL            PRES            TEMP            PSAL            PRES            TEMP            PSAL            PRES_ADJ=PRES-PO1+PO2,  where PO1 is PRESSURE OFFSET from this cycle and PO2 is PRESSURE OFFSET from next cycle; PRES_ADJ_ERR=Manufacturer sensor accuracy                                                                                                      TEMP_ADJ=TEMP; TEMP_ADJ_ERR=Manufacturer sensor accuracy                                                                                                                                                                                                        PSAL_ADJ = RecalS= psal(PRES_ADJ,TEMP,Conductivity)                                                                                                                                                                                                             PRES_ADJ=PRES-PO1+PO2,  where PO1 is PRESSURE OFFSET from this cycle and PO2 is PRESSURE OFFSET from next cycle; PRES_ADJ_ERR=Manufacturer sensor accuracy                                                                                                      TEMP_ADJ=TEMP; TEMP_ADJ_ERR=Manufacturer sensor accuracy                                                                                                                                                                                                        PSAL_ADJ = RecalS= psal(PRES_ADJ,TEMP,Conductivity)                                                                                                                                                                                                             PRES_ADJ=PRES-PO1+PO2,  where PO1 is PRESSURE OFFSET from this cycle and PO2 is PRESSURE OFFSET from next cycle; PRES_ADJ_ERR=Manufacturer sensor accuracy                                                                                                      TEMP_ADJ=TEMP; TEMP_ADJ_ERR=Manufacturer sensor accuracy                                                                                                                                                                                                        PSAL_ADJ = RecalS= psal(PRES_ADJ,TEMP,Conductivity)                                                                                                                                                                                                             PRES_ADJ=PRES-PO1+PO2,  where PO1 is PRESSURE OFFSET from this cycle and PO2 is PRESSURE OFFSET from next cycle; PRES_ADJ_ERR=Manufacturer sensor accuracy                                                                                                      TEMP_ADJ=TEMP; TEMP_ADJ_ERR=Manufacturer sensor accuracy                                                                                                                                                                                                        PSAL_ADJ = RecalS= psal(PRES_ADJ,TEMP,Conductivity)                                                                                                                                                                                                             PRES_ADJ=PRES-PO1+PO2,  where PO1 is PRESSURE OFFSET from this cycle and PO2 is PRESSURE OFFSET from next cycle; PRES_ADJ_ERR=Manufacturer sensor accuracy                                                                                                      TEMP_ADJ=TEMP; TEMP_ADJ_ERR=Manufacturer sensor accuracy                                                                                                                                                                                                        PSAL_ADJ = RecalS= psal(PRES_ADJ,TEMP,Conductivity)                                                                                                                                                                                                             PO1=0.0(dbar); PO2=0.0(dbar)                                                                                                                                                                                                                                    None                                                                                                                                                                                                                                                            None                                                                                                                                                                                                                                                            PO1=0.0(dbar); PO2=0.0(dbar)                                                                                                                                                                                                                                    None                                                                                                                                                                                                                                                            None                                                                                                                                                                                                                                                            PO1=0.0(dbar); PO2=0.0(dbar)                                                                                                                                                                                                                                    None                                                                                                                                                                                                                                                            None                                                                                                                                                                                                                                                            PO1=0.0(dbar); PO2=0.0(dbar)                                                                                                                                                                                                                                    None                                                                                                                                                                                                                                                            None                                                                                                                                                                                                                                                            PO1=0.0(dbar); PO2=0.0(dbar)                                                                                                                                                                                                                                    None                                                                                                                                                                                                                                                            None                                                                                                                                                                                                                                                            Pressure Correction using reported PRESSURE OFFSET                                                                                                                                                                                                              None                                                                                                                                                                                                                                                            Salinity Recalculation using PRES_ADJ                                                                                                                                                                                                                           Pressure Correction using reported PRESSURE OFFSET                                                                                                                                                                                                              None                                                                                                                                                                                                                                                            Salinity Recalculation using PRES_ADJ                                                                                                                                                                                                                           Pressure Correction using reported PRESSURE OFFSET                                                                                                                                                                                                              None                                                                                                                                                                                                                                                            Salinity Recalculation using PRES_ADJ                                                                                                                                                                                                                           Pressure Correction using reported PRESSURE OFFSET                                                                                                                                                                                                              None                                                                                                                                                                                                                                                            Salinity Recalculation using PRES_ADJ                                                                                                                                                                                                                           Pressure Correction using reported PRESSURE OFFSET                                                                                                                                                                                                              None                                                                                                                                                                                                                                                            Salinity Recalculation using PRES_ADJ                                                                                                                                                                                                                           202004231028502020042310285020200423102850202004231029022020042310290220200423102902202004231029152020042310291520200423102915202004231029272020042310292720200423102927202004231029392020042310293920200423102939  JA  JA  JA  JA  JA  ARFMARFMARFMARFMARFMdecpdecpdecpdecpdecpV4_bV4_bV4_bV4_bV4_b                                                                                                                                                                                                                                                                                                                                2017080221521820170808005452201708122152012017081721520420170822215208  IP  IP  IP  IP  IP                                                                                  G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�                                                                                JA  JA  JA  JA  JA  ARFMARGQARFMARFMARFMfmtprqcpfmtpfmtpfmtp2.6 po_b2.6 2.6 2.6                                                                                                                                                                                                                                                                                                                                 2017080221521920170808005453201708122152012017081721520520170822215209  IP  QCP$IP  IP  IP                                                                                  G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�                3C                                                              JA  JA  JA  JA  JA  ARGQARFMARGQARGQARGQrqcpfmtprqcprqcprqcpt19c2.6 po_bt19cpo_b                                                                                                                                                                                                                                                                                                                                2017080221522020170808005453201708122152022017081721520620170822215209  QCP$IP  QCP$QCP$QCP$                                                                                G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�80000                           3C              80000           3C              JA  JA  JA  JA  JA  ARGQARGQARGQARGQARGQrqcprqcprqcprqcprqcp2.8dt19ct19cpo_bt16b                                                                                                                                                                                                                                                                                                                                2017080221522020170808005454201708122152022017081721520620170822215210  QCP$QCP$QCP$QCP$QCP$                                                                                G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�FB40            80000           80000           3C              0               JA  JA  JA  JA  JA  ARGQARGQARGQARGQARGQrqcprqcprqcprqcprqcppo_bt16b2.8d2.8dt19c                                                                                                                                                                                                                                                                                                                                2017080221522020170808005454201708122152022017081721520620170822215210  QCP$QCP$QCP$QCP$QCP$                                                                                G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�3C              10000           FB40            FB40            80000           JA  JA  JA  JA  JA  ARGQARGQARGQARGQARGQrqcprqcprqcprqcprqcpt16b2.8dt16bt16b2.8d                                                                                                                                                                                                                                                                                                                                2017080221522120170808005454201708122152022017081721520620170822215210  QCP$QCP$QCP$QCP$QCP$                                                                                G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�10000           FB40            10000           10000           FB40            JA  JA  JA  JA  JA  ARUPARUPARUPARUPARUPXXXXXXXXXXXXXXXXXXXX                                                                                                                                                                                                                                                                                                                                                    2017080221554320170808005712201708122154582017081721544620170822215520                                                                                                      G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�                                                                                JA  JA  JA  JA  JA  ARFMARFMARFMARFMARFMdecpdecpdecpdecpdecpV4_bV4_bV4_bV4_bV4_b                                                                                                                                                                                                                                                                                                                                2017080606522720170811065222201708160652152017082106521820170826065217  IP  IP  IP  IP  IP                                                                                  G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�                                                                                JA  JA  JA  JA  JA  ARFMARFMARGQARFMARGQfmtpfmtprqcpfmtprqcp2.6 2.6 po_b2.6 po_b                                                                                                                                                                                                                                                                                                                                2017080606532720170811065316201708160653152017082106531820170826065316  IP  IP  QCP$IP  QCP$                                                                                G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�                                3C                              3C              JA  JA  JA  JA  JA  ARGQARGQARFMARGQARFMrqcprqcpfmtprqcpfmtpt19cpo_b2.6 po_b2.6                                                                                                                                                                                                                                                                                                                                 2017080606532820170811065316201708160653152017082106531820170826065316  QCP$QCP$IP  QCP$IP                                                                                  G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�80000           3C                              3C                              JA  JA  JA  JA  JA  ARGQARGQARGQARGQARGQrqcprqcprqcprqcprqcpt16bt19ct19ct19ct16b                                                                                                                                                                                                                                                                                                                                2017080606532820170811065317201708160653162017082106531920170826065317  QCP$QCP$QCP$QCP$QCP$                                                                                G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�10000           80000           80000           80000           0               JA  JA  JA  JA  JA  ARGQARGQARGQARGQARGQrqcprqcprqcprqcprqcp2.8dt16b2.8d2.8d2.8d                                                                                                                                                                                                                                                                                                                                2017080606532820170811065317201708160653162017082106531920170826065317  QCP$QCP$QCP$QCP$QCP$                                                                                G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�FB40            10000           FB40            FB40            FB40            JA  JA  JA  JA  JA  ARGQARGQARGQARGQARGQrqcprqcprqcprqcprqcppo_b2.8dt16bt16bt19c                                                                                                                                                                                                                                                                                                                                2017080606532820170811065317201708160653162017082106531920170826065317  QCP$QCP$QCP$QCP$QCP$                                                                                G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�3C              FB40            10000           10000           80000           JA  JA  JA  JA  JA                      jafcjafcjafcjafcjafc1.0 1.0 1.0 1.0 1.0                                                                                                                                                                                                                                                                                                                                 2017080606532920170811065318201708160653172017082106532020170826065318                                                                                                      G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�                                                                                JA  JA  JA  JA  JA  ARUPARUPARUPARUPARUPXXXXXXXXXXXXXXXXXXXX                                                                                                                                                                                                                                                                                                                                                    2017080606572220170811065644201708160656572017082106570620170826065704                                                                                                      G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�                                                                                JM  JM  JM  JM  JM  ARSQARSQARSQARSQARSQJMQCJMQCJMQCJMQCJMQC2.0 2.0 2.0 2.0 2.0                                                                                                                                                                                                                                                                                                                                 2020042300000020200423000000202004230000002020042300000020200423000000  CF  CF  CF  CF  CF  TEMP_ADJUSTED_QCTEMP_ADJUSTED_QCPSAL_ADJUSTED_QCPSAL_ADJUSTED_QCTEMP_ADJUSTED_QC>L��>���?���>L��>L��>L��>���@���@�  >L��G�O�G�O�G�O�G�O�G�O�                                                                                JM  JM  JM  JM  JM  ARSQARSQARCAARSQARSQJMQCJMQCJMQCJMQCJMQC2.0 2.0 2.0 2.0 2.0                                                                                                                                                                                                                                                                                                                                 2020042300000020200423000000202004230129152020042300000020200423000000  CF  CF  IP  CF  CF  PSAL_ADJUSTED_QCPSAL_ADJUSTED_QCPRES_ADJUSTED   TEMP_ADJUSTED_QCPSAL_ADJUSTED_QC>L��>���G�O�>L��>L��@�  >���G�O�>L��@�  G�O�G�O�G�O�G�O�G�O�                                                                                JM  JM  JM  JM  JM  ARCAARCAARCAARCAARCAJMQCJMQCJMQCJMQCJMQC2.0 2.0 2.0 2.0 2.0                                                                                                                                                                                                                                                                                                                                 2020042301285020200423012902202004230129152020042301292720200423012939  IP  IP  CV  IP  CV  PRES_ADJUSTED   PRES_ADJUSTED   PSAL_ADJUSTED   PRES_ADJUSTED   PSAL_ADJUSTED   G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�                                                                                JM  JM  JM  JM  JM  ARCAARCAARCAARCAARCAJMQCJMQCJMTMJMQCJMQC2.0 2.0 1.0 2.0 2.0                                                                                                                                                                                                                                                                                                                                 2020042301285020200423012902202008070800092020042301292720200423012939  CV  CV  CV  CV  IP  PSAL_ADJUSTED   PSAL_ADJUSTED   PSAL_ADJUSTED   PSAL_ADJUSTED   PRES_ADJUSTED   G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�                                                                                JM  JM  JM  JM  JM  ARCAARCAARSQARCAARCAJMTMJMTMOW  JMTMJMTM1.0 1.0 1.1 1.0 1.0                                                                                                                                 2017V1                                                                                                                                                                                          2020080708000720200807080008202008071201152020080708000920200807080010  CV  CV  IP  CV  CV  PSAL_ADJUSTED   PSAL_ADJUSTED   PSAL_ADJUSTED   PSAL_ADJUSTED   PSAL_ADJUSTED   G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�                                                                                JM  JM  JA  JM  JM  ARSQARSQARDUARSQARSQOW  OW  XXXXOW  OW  1.1 1.1     1.1 1.1 2017V1                                                          2017V1                                                                                                                          2017V1                                                          2017V1                                                          2020080712011120200807120113202012022015052020080712011820200807120120  IP  IP      IP  IP  PSAL_ADJUSTED   PSAL_ADJUSTED                   PSAL_ADJUSTED   PSAL_ADJUSTED   G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�                                                                                JA  JA  IF  JA  JA  ARDUARDUARGQARDUARDUXXXXXXXXMIMAXXXXXXXX        4.0                                                                                                                                                                                                                                                                                                                                         2020120220150520201202201505202012022157572020120220150520201202211502          QCP$                                                                                        G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�                                                                                IF  IF      IF  IF  ARGQARGQ    ARGQARGQMIMAMIMA    MIMAMIMA4.0 4.0     4.0 4.0                                                                                                                                                                                                                                                                                                                                 2020120221575720201202215757              2020120221575720201202225739  QCP$QCP$    QCP$QCP$                                                                                G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�                                                                                