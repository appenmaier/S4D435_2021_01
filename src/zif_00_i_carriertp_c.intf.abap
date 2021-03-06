interface ZIF_00_I_CARRIERTP_C
  public .


  interfaces /BOBF/IF_LIB_CONSTANTS .

  constants:
    BEGIN OF SC_ACTION,
      BEGIN OF Z00_I_CARRIERTP,
 CREATE_Z00_I_CARRIERTP         TYPE /BOBF/ACT_KEY VALUE '005056044E851EDB98ACDEA6A7E99F07',
 CURRENCY_TO_EURO               TYPE /BOBF/ACT_KEY VALUE '005056044E851EEB98AF634DCF280579',
 DELETE_Z00_I_CARRIERTP         TYPE /BOBF/ACT_KEY VALUE '005056044E851EDB98ACDEA6A7EA1F07',
 LOCK_Z00_I_CARRIERTP           TYPE /BOBF/ACT_KEY VALUE '005056044E851EDB98ACDEA6A7E8DF07',
 SAVE_Z00_I_CARRIERTP           TYPE /BOBF/ACT_KEY VALUE '005056044E851EDB98ACDEA6A7EA9F07',
 SHOW_MESSAGE                   TYPE /BOBF/ACT_KEY VALUE '005056044E851EEB98AE0AD44287E229',
 UNLOCK_Z00_I_CARRIERTP         TYPE /BOBF/ACT_KEY VALUE '005056044E851EDB98ACDEA6A7E91F07',
 UPDATE_Z00_I_CARRIERTP         TYPE /BOBF/ACT_KEY VALUE '005056044E851EDB98ACDEA6A7E9DF07',
 VALIDATE_Z00_I_CARRIERTP       TYPE /BOBF/ACT_KEY VALUE '005056044E851EDB98ACDEA6A7EA5F07',
      END OF Z00_I_CARRIERTP,
      BEGIN OF Z00_I_CONNECTIONTP,
 CREATE_Z00_I_CONNECTIONTP      TYPE /BOBF/ACT_KEY VALUE '005056044E851EEB98C8BF1BBAB9012A',
 DELETE_Z00_I_CONNECTIONTP      TYPE /BOBF/ACT_KEY VALUE '005056044E851EEB98C8BF1BBAB9812A',
 SAVE_Z00_I_CONNECTIONTP        TYPE /BOBF/ACT_KEY VALUE '005056044E851EEB98C8BF1BBABA012A',
 UPDATE_Z00_I_CONNECTIONTP      TYPE /BOBF/ACT_KEY VALUE '005056044E851EEB98C8BF1BBAB9412A',
 VALIDATE_Z00_I_CONNECTIONTP    TYPE /BOBF/ACT_KEY VALUE '005056044E851EEB98C8BF1BBAB9C12A',
      END OF Z00_I_CONNECTIONTP,
    END OF SC_ACTION .
  constants:
    BEGIN OF SC_ACTION_ATTRIBUTE,
        BEGIN OF Z00_I_CARRIERTP,
        BEGIN OF LOCK_Z00_I_CARRIERTP,
 GENERIC                        TYPE STRING VALUE 'GENERIC',
 EDIT_MODE                      TYPE STRING VALUE 'EDIT_MODE',
 ALL_NONE                       TYPE STRING VALUE 'ALL_NONE',
 SCOPE                          TYPE STRING VALUE 'SCOPE',
 FORCE_INVALIDATION             TYPE STRING VALUE 'FORCE_INVALIDATION',
 LOCK_PARAMETER_BUFFER          TYPE STRING VALUE 'LOCK_PARAMETER_BUFFER',
 LEGACY_DAC_KEY                 TYPE STRING VALUE 'LEGACY_DAC_KEY',
        END OF LOCK_Z00_I_CARRIERTP,
        BEGIN OF UNLOCK_Z00_I_CARRIERTP,
 GENERIC                        TYPE STRING VALUE 'GENERIC',
 EDIT_MODE                      TYPE STRING VALUE 'EDIT_MODE',
 ALL_NONE                       TYPE STRING VALUE 'ALL_NONE',
 SCOPE                          TYPE STRING VALUE 'SCOPE',
 FORCE_INVALIDATION             TYPE STRING VALUE 'FORCE_INVALIDATION',
 LOCK_PARAMETER_BUFFER          TYPE STRING VALUE 'LOCK_PARAMETER_BUFFER',
 LEGACY_DAC_KEY                 TYPE STRING VALUE 'LEGACY_DAC_KEY',
        END OF UNLOCK_Z00_I_CARRIERTP,
      END OF Z00_I_CARRIERTP,
    END OF SC_ACTION_ATTRIBUTE .
  constants:
    BEGIN OF SC_ALTERNATIVE_KEY,
      BEGIN OF Z00_I_CARRIERTP,
 DB_KEY                         TYPE /BOBF/OBM_ALTKEY_KEY VALUE '005056044E851EDB98ACDED4BC105F07',
      END OF Z00_I_CARRIERTP,
      BEGIN OF Z00_I_CONNECTIONTP,
 DB_KEY                         TYPE /BOBF/OBM_ALTKEY_KEY VALUE '005056044E851EEB98C8BF1BBAB5C12A',
 PARENT_KEY                     TYPE /BOBF/OBM_ALTKEY_KEY VALUE '005056044E851EEB98C8BF1BBAB5E12A',
      END OF Z00_I_CONNECTIONTP,
    END OF SC_ALTERNATIVE_KEY .
  constants:
    BEGIN OF SC_ASSOCIATION,
      BEGIN OF Z00_I_CARRIERTP,
 LOCK                           TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056044E851EDB98ACDEA6A7E8BF07',
 MESSAGE                        TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056044E851EDB98ACDEA6A7E87F07',
 PROPERTY                       TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056044E851EDB98ACDEA6A7E97F07',
 _CONNECTIONS                   TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056044E851EEB98C8BF1BBAB8412A',
      END OF Z00_I_CARRIERTP,
      BEGIN OF Z00_I_CARRIERTP_LOCK,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056044E851EDB98ACDEA6A7EAFF07',
      END OF Z00_I_CARRIERTP_LOCK,
      BEGIN OF Z00_I_CARRIERTP_MESSAGE,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056044E851EDB98ACDEA6A7EADF07',
      END OF Z00_I_CARRIERTP_MESSAGE,
      BEGIN OF Z00_I_CARRIERTP_PROPERTY,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056044E851EDB98ACDEA6A7EB1F07',
      END OF Z00_I_CARRIERTP_PROPERTY,
      BEGIN OF Z00_I_CONNECTIONTP,
 MESSAGE                        TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056044E851EEB98C8BF1BBAB8A12A',
 PROPERTY                       TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056044E851EEB98C8BF1BBAB8E12A',
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056044E851EEB98C8BF1BBABA412A',
 TO_ROOT                        TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056044E851EEB98C8BF1BBABA612A',
      END OF Z00_I_CONNECTIONTP,
      BEGIN OF Z00_I_CONNECTIONTP_MESSAGE,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056044E851EEB98C8BF1BBABA812A',
      END OF Z00_I_CONNECTIONTP_MESSAGE,
      BEGIN OF Z00_I_CONNECTIONTP_PROPERTY,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056044E851EEB98C8BF1BBABAA12A',
      END OF Z00_I_CONNECTIONTP_PROPERTY,
    END OF SC_ASSOCIATION .
  constants:
    BEGIN OF SC_ASSOCIATION_ATTRIBUTE,
      BEGIN OF Z00_I_CARRIERTP,
        BEGIN OF PROPERTY,
 ALL_NODE_PROPERTY              TYPE STRING VALUE 'ALL_NODE_PROPERTY',
 ALL_NODE_ATTRIBUTE_PROPERTY    TYPE STRING VALUE 'ALL_NODE_ATTRIBUTE_PROPERTY',
 ALL_ASSOCIATION_PROPERTY       TYPE STRING VALUE 'ALL_ASSOCIATION_PROPERTY',
 ALL_ASSOCIATION_ATTRIBUTE_PROP TYPE STRING VALUE 'ALL_ASSOCIATION_ATTRIBUTE_PROP',
 ALL_ACTION_PROPERTY            TYPE STRING VALUE 'ALL_ACTION_PROPERTY',
 ALL_ACTION_ATTRIBUTE_PROPERTY  TYPE STRING VALUE 'ALL_ACTION_ATTRIBUTE_PROPERTY',
 ALL_QUERY_PROPERTY             TYPE STRING VALUE 'ALL_QUERY_PROPERTY',
 ALL_QUERY_ATTRIBUTE_PROPERTY   TYPE STRING VALUE 'ALL_QUERY_ATTRIBUTE_PROPERTY',
 ALL_SUBTREE_PROPERTY           TYPE STRING VALUE 'ALL_SUBTREE_PROPERTY',
        END OF PROPERTY,
      END OF Z00_I_CARRIERTP,
      BEGIN OF Z00_I_CONNECTIONTP,
        BEGIN OF PROPERTY,
 ALL_NODE_PROPERTY              TYPE STRING VALUE 'ALL_NODE_PROPERTY',
 ALL_NODE_ATTRIBUTE_PROPERTY    TYPE STRING VALUE 'ALL_NODE_ATTRIBUTE_PROPERTY',
 ALL_ASSOCIATION_PROPERTY       TYPE STRING VALUE 'ALL_ASSOCIATION_PROPERTY',
 ALL_ASSOCIATION_ATTRIBUTE_PROP TYPE STRING VALUE 'ALL_ASSOCIATION_ATTRIBUTE_PROP',
 ALL_ACTION_PROPERTY            TYPE STRING VALUE 'ALL_ACTION_PROPERTY',
 ALL_ACTION_ATTRIBUTE_PROPERTY  TYPE STRING VALUE 'ALL_ACTION_ATTRIBUTE_PROPERTY',
 ALL_QUERY_PROPERTY             TYPE STRING VALUE 'ALL_QUERY_PROPERTY',
 ALL_QUERY_ATTRIBUTE_PROPERTY   TYPE STRING VALUE 'ALL_QUERY_ATTRIBUTE_PROPERTY',
 ALL_SUBTREE_PROPERTY           TYPE STRING VALUE 'ALL_SUBTREE_PROPERTY',
        END OF PROPERTY,
      END OF Z00_I_CONNECTIONTP,
    END OF SC_ASSOCIATION_ATTRIBUTE .
  constants:
    SC_BO_KEY  TYPE /BOBF/OBM_BO_KEY VALUE '005056044E851EDB98ACDEA6A7E7DF07' .
  constants:
    SC_BO_NAME TYPE /BOBF/OBM_NAME VALUE 'Z00_I_CARRIERTP' .
  constants:
    BEGIN OF SC_DETERMINATION,
      BEGIN OF Z00_I_CARRIERTP,
 ACTION_AND_FIELD_CONTROL       TYPE /BOBF/DET_KEY VALUE '005056044E851EDB98ACDED4BC107F07',
 DETERMINE_URL                  TYPE /BOBF/DET_KEY VALUE '005056044E851EDB98C7145F63BD5D1E',
      END OF Z00_I_CARRIERTP,
      BEGIN OF Z00_I_CONNECTIONTP,
 ACTION_AND_FIELD_CONTROL       TYPE /BOBF/DET_KEY VALUE '005056044E851EEB98C8BF1BBAB6012A',
      END OF Z00_I_CONNECTIONTP,
    END OF SC_DETERMINATION .
  constants:
    BEGIN OF SC_GROUP,
 Z00_I_CARRIERTP                TYPE /BOBF/OBM_GROUP_KEY VALUE '005056044E851EDB98C5B9A5E46B5A31',
    END OF SC_GROUP .
  constants:
    SC_MODEL_VERSION TYPE /BOBF/CONF_VERSION VALUE '00000' .
  constants:
    BEGIN OF SC_NODE,
 Z00_I_CARRIERTP                TYPE /BOBF/OBM_NODE_KEY VALUE '005056044E851EDB98ACDEA6A7E81F07',
 Z00_I_CARRIERTP_LOCK           TYPE /BOBF/OBM_NODE_KEY VALUE '005056044E851EDB98ACDEA6A7E89F07',
 Z00_I_CARRIERTP_MESSAGE        TYPE /BOBF/OBM_NODE_KEY VALUE '005056044E851EDB98ACDEA6A7E85F07',
 Z00_I_CARRIERTP_PROPERTY       TYPE /BOBF/OBM_NODE_KEY VALUE '005056044E851EDB98ACDEA6A7E95F07',
 Z00_I_CONNECTIONTP             TYPE /BOBF/OBM_NODE_KEY VALUE '005056044E851EEB98C8BF1BBAB5412A',
 Z00_I_CONNECTIONTP_MESSAGE     TYPE /BOBF/OBM_NODE_KEY VALUE '005056044E851EEB98C8BF1BBAB8812A',
 Z00_I_CONNECTIONTP_PROPERTY    TYPE /BOBF/OBM_NODE_KEY VALUE '005056044E851EEB98C8BF1BBAB8C12A',
    END OF SC_NODE .
  constants:
    BEGIN OF SC_NODE_ATTRIBUTE,
      BEGIN OF Z00_I_CARRIERTP,
  NODE_DATA                      TYPE STRING VALUE 'NODE_DATA',
  CARRIERID                      TYPE STRING VALUE 'CARRIERID',
  CARRIERNAME                    TYPE STRING VALUE 'CARRIERNAME',
  CURRENCYCODE                   TYPE STRING VALUE 'CURRENCYCODE',
  URL                            TYPE STRING VALUE 'URL',
      END OF Z00_I_CARRIERTP,
      BEGIN OF Z00_I_CONNECTIONTP,
  NODE_DATA                      TYPE STRING VALUE 'NODE_DATA',
  CARRIERID                      TYPE STRING VALUE 'CARRIERID',
  CONNECTIONID                   TYPE STRING VALUE 'CONNECTIONID',
  CITYFROM                       TYPE STRING VALUE 'CITYFROM',
  CITYTO                         TYPE STRING VALUE 'CITYTO',
      END OF Z00_I_CONNECTIONTP,
    END OF SC_NODE_ATTRIBUTE .
  constants:
    BEGIN OF SC_NODE_CATEGORY,
      BEGIN OF Z00_I_CARRIERTP,
 ROOT                           TYPE /BOBF/OBM_NODE_CAT_KEY VALUE '005056044E851EDB98ACDEA6A7E83F07',
      END OF Z00_I_CARRIERTP,
      BEGIN OF Z00_I_CONNECTIONTP,
 Z00_I_CONNECTIONTP             TYPE /BOBF/OBM_NODE_CAT_KEY VALUE '005056044E851EEB98C8BF1BBAB8212A',
      END OF Z00_I_CONNECTIONTP,
    END OF SC_NODE_CATEGORY .
  constants:
    BEGIN OF SC_VALIDATION,
      BEGIN OF Z00_I_CARRIERTP,
 MANDATORY_FIELDS               TYPE /BOBF/VAL_KEY VALUE '005056044E851EDB98C5B9A5E46AFA31',
      END OF Z00_I_CARRIERTP,
    END OF SC_VALIDATION .
endinterface.
