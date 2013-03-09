.class public interface abstract Lcom/android/internal/telephony/RILConstants;
.super Ljava/lang/Object;
.source "RILConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/RILConstants$RIL_QosIndStates;,
        Lcom/android/internal/telephony/RILConstants$RIL_QosStatus;,
        Lcom/android/internal/telephony/RILConstants$RIL_QosSpecKeys;,
        Lcom/android/internal/telephony/RILConstants$RIL_QosDirection;,
        Lcom/android/internal/telephony/RILConstants$RIL_QosClass;
    }
.end annotation


# static fields
.field public static final CDMA_CELL_BROADCAST_SMS_DISABLED:I = 0x1

.field public static final CDMA_CELL_BROADCAST_SMS_ENABLED:I = 0x0

.field public static final CDMA_PHONE:I = 0x2

.field public static final CDM_TTY_FULL_MODE:I = 0x1

.field public static final CDM_TTY_HCO_MODE:I = 0x2

.field public static final CDM_TTY_MODE_DISABLED:I = 0x0

.field public static final CDM_TTY_MODE_ENABLED:I = 0x1

.field public static final CDM_TTY_VCO_MODE:I = 0x3

.field public static final DATA_PROFILE_ADMIN:I = 0x3e8

.field public static final DATA_PROFILE_CBS:I = 0x4

.field public static final DATA_PROFILE_CMAIL:I = 0x3e9

.field public static final DATA_PROFILE_DEFAULT:I = 0x0

.field public static final DATA_PROFILE_FOTA:I = 0x3

.field public static final DATA_PROFILE_IMS:I = 0x2

.field public static final DATA_PROFILE_OEM_BASE:I = 0x3e8

.field public static final DATA_PROFILE_OTASP:I = 0x3ea

.field public static final DATA_PROFILE_TETHERED:I = 0x1

.field public static final DATA_PROFILE_UNKNOWN:I = 0xa

.field public static final DEACTIVATE_REASON_NONE:I = 0x0

.field public static final DEACTIVATE_REASON_PDP_RESET:I = 0x2

.field public static final DEACTIVATE_REASON_RADIO_OFF:I = 0x1

.field public static final DIAL_MODIFIED_TO_DIAL:I = 0xdb

.field public static final DIAL_MODIFIED_TO_SS:I = 0xda

.field public static final DIAL_MODIFIED_TO_USSD:I = 0xd9

.field public static final DUE_TO_CB:I = 0x6a

.field public static final DUE_TO_FDN:I = 0x65

.field public static final FDN_CHECK_FAILURE:I = 0xe

.field public static final FDN_NOT_SUPPORT:I = 0x6b

.field public static final FD_BALLOTS_HTCMAIL:I = 0x1

.field public static final FD_BALLOTS_RIL:I = 0x0

.field public static final GENERIC_FAILURE:I = 0x2

.field public static final GSM_PHONE:I = 0x1

.field public static final HTC_REQUEST_PROJECT_SPECIFIC_EXTEND_FLAG:I = 0x2710

.field public static final HTC_UNSOL_EXTEND_PROJECT_SPECIFIC_FLAG:I = 0x4e20

.field public static final ILLEGAL_SIM_OR_ME:I = 0xf

.field public static final IMS_PHONE:I = 0x4

.field public static final LTE_ON_CDMA_FALSE:I = 0x0

.field public static final LTE_ON_CDMA_TRUE:I = 0x1

.field public static final LTE_ON_CDMA_UNKNOWN:I = -0x1

.field public static final MAX_INT:I = 0x7fffffff

.field public static final MISSING_RESOURCE:I = 0x2720

.field public static final MODE_NOT_SUPPORTED:I = 0xd

.field public static final NEGATIVE_PW_CHECK:I = 0x68

.field public static final NETWORK_MODE_CDMA:I = 0x4

.field public static final NETWORK_MODE_CDMA_AND_LTE_EVDO:I = 0x8

.field public static final NETWORK_MODE_CDMA_LTE:I = 0xc

.field public static final NETWORK_MODE_CDMA_NO_EVDO:I = 0x5

.field public static final NETWORK_MODE_EVDO_NO_CDMA:I = 0x6

.field public static final NETWORK_MODE_GLOBAL:I = 0x7

.field public static final NETWORK_MODE_GLOBAL_LTE:I = 0xa

.field public static final NETWORK_MODE_GSM_ONLY:I = 0x1

.field public static final NETWORK_MODE_GSM_UMTS:I = 0x3

.field public static final NETWORK_MODE_GSM_WCDMA_LTE:I = 0x9

.field public static final NETWORK_MODE_LTE_CDMA_EVDO:I = 0x8

.field public static final NETWORK_MODE_LTE_CMDA_EVDO_GSM_WCDMA:I = 0xa

.field public static final NETWORK_MODE_LTE_GSM_WCDMA:I = 0x9

.field public static final NETWORK_MODE_LTE_ONLY:I = 0xb

.field public static final NETWORK_MODE_WCDMA_ONLY:I = 0x2

.field public static final NETWORK_MODE_WCDMA_PREF:I = 0x0

.field public static final NO_PHONE:I = 0x0

.field public static final NO_SUCH_ELEMENT:I = 0x2721

.field public static final NUM_OF_PW_ATTEMPTS_VIOLATION:I = 0x69

.field public static final NW_SCAN_NOT_ALLOWED:I = 0x6c

.field public static final OP_NOT_ALLOWED_BEFORE_REG_NW:I = 0x9

.field public static final OP_NOT_ALLOWED_DURING_VOICE_CALL:I = 0x8

.field public static final PASSWORD_INCORRECT:I = 0x3

.field public static final PB_MEM_FULL:I = 0x66

.field public static final PREFERRED_CDMA_SUBSCRIPTION:I = 0x1

.field public static final PREFERRED_NETWORK_MODE:I = 0x0

.field public static final PW_REGISTRATION_FAILURE:I = 0x67

.field public static final RADIO_NOT_AVAILABLE:I = 0x1

.field public static final REQUEST_CANCELLED:I = 0x7

.field public static final REQUEST_NOT_SUPPORTED:I = 0x6

.field public static final RIL_2G_SIM_CARD:I = 0x1

.field public static final RIL_3G_SIM_CARD:I = 0x2

.field public static final RIL_CW_DEREGISTER_FAIL:I = 0x130

.field public static final RIL_CW_DEREGISTER_SUCC:I = 0x12f

.field public static final RIL_CW_REGISTER_FAIL:I = 0x12e

.field public static final RIL_CW_REGISTER_SUCC:I = 0x12d

.field public static final RIL_DBDM_SIM_CARD:I = 0x4

.field public static final RIL_DUAL_CARD:I = 0x8

.field public static final RIL_ERRNO_INVALID_RESPONSE:I = -0x1

.field public static final RIL_ERRNO_SMART_CARD_SERVICE_BASE:I = 0x2710

.field public static final RIL_E_QCT_BASE:I = 0xc8

.field public static final RIL_MAX_NETWORKS:I = 0x2

.field public static final RIL_NO_SIM_CARD:I = 0x0

.field public static final RIL_REQUEST_3G_CONTEXT_AUTHENTICATE:I = 0x246

.field public static final RIL_REQUEST_ACKNOWLEDGE_INCOMING_GSM_SMS_WITH_PDU:I = 0x6a

.field public static final RIL_REQUEST_ADD_BLACKLIST_ITEM:I = 0x271b

.field public static final RIL_REQUEST_ADD_PREFERRED_OPERATOR_LIST:I = 0x2718

.field public static final RIL_REQUEST_ANSWER:I = 0x28

.field public static final RIL_REQUEST_BASEBAND_VERSION:I = 0x33

.field public static final RIL_REQUEST_CANCEL_USSD:I = 0x1e

.field public static final RIL_REQUEST_CDMA_BASE:I = 0x7d0

.field public static final RIL_REQUEST_CDMA_BROADCAST_ACTIVATION:I = 0x5e

.field public static final RIL_REQUEST_CDMA_BURST_DTMF:I = 0x55

.field public static final RIL_REQUEST_CDMA_CLEAR_AVOID_NETWORK:I = 0x810

.field public static final RIL_REQUEST_CDMA_DELETE_SMS_ON_RUIM:I = 0x61

.field public static final RIL_REQUEST_CDMA_EXIT_POWERSAVE_MODE:I = 0x7d4

.field public static final RIL_REQUEST_CDMA_FLASH:I = 0x54

.field public static final RIL_REQUEST_CDMA_GET_APP_PROFILE:I = 0x7fc

.field public static final RIL_REQUEST_CDMA_GET_A_KEY:I = 0x7ea

.field public static final RIL_REQUEST_CDMA_GET_BCSMS:I = 0x7fa

.field public static final RIL_REQUEST_CDMA_GET_BCSMS_SRVLBL:I = 0x800

.field public static final RIL_REQUEST_CDMA_GET_BCSMS_SRVNUM:I = 0x7ff

.field public static final RIL_REQUEST_CDMA_GET_BROADCAST_CONFIG:I = 0x5c

.field public static final RIL_REQUEST_CDMA_GET_CELL_INFO:I = 0x7ee

.field public static final RIL_REQUEST_CDMA_GET_CURRENT_SERVICE_DOMAIN:I = 0x7f9

.field public static final RIL_REQUEST_CDMA_GET_DDTM:I = 0x7e5

.field public static final RIL_REQUEST_CDMA_GET_GPSONEMODE:I = 0x7da

.field public static final RIL_REQUEST_CDMA_GET_HYBRID_MODE:I = 0x7e3

.field public static final RIL_REQUEST_CDMA_GET_MSL:I = 0x7d6

.field public static final RIL_REQUEST_CDMA_GET_NAM:I = 0x7e1

.field public static final RIL_REQUEST_CDMA_GET_NETWORK_BASE_PLUSCODE_DIAL:I = 0x7f1

.field public static final RIL_REQUEST_CDMA_GET_OMADM_TRIGGER:I = 0x7f4

.field public static final RIL_REQUEST_CDMA_GET_OTKSL:I = 0x7d7

.field public static final RIL_REQUEST_CDMA_GET_RADIO_SYSTEM_INFO:I = 0x7e9

.field public static final RIL_REQUEST_CDMA_GET_SUBSCRIPTION_SOURCE:I = 0x68

.field public static final RIL_REQUEST_CDMA_GET_SYSTEM_GPSTIME:I = 0x7e0

.field public static final RIL_REQUEST_CDMA_GET_SYSTEM_LOCALTIME:I = 0x7df

.field public static final RIL_REQUEST_CDMA_GET_TEST_BCSMS:I = 0x80c

.field public static final RIL_REQUEST_CDMA_GET_WIMAX_MODE:I = 0x7f2

.field public static final RIL_REQUEST_CDMA_HTC_DM_COMMAND:I = 0x7d1

.field public static final RIL_REQUEST_CDMA_HTC_DM_COMMAND_EX:I = 0x7f5

.field public static final RIL_REQUEST_CDMA_KDDI_DM_PROVISION:I = 0x80d

.field public static final RIL_REQUEST_CDMA_QUERY_AVOID_NETWORK:I = 0x80f

.field public static final RIL_REQUEST_CDMA_QUERY_CAVE:I = 0x802

.field public static final RIL_REQUEST_CDMA_QUERY_MD5:I = 0x809

.field public static final RIL_REQUEST_CDMA_QUERY_OTA_MSG_PROVISION:I = 0x7d5

.field public static final RIL_REQUEST_CDMA_QUERY_PREFERRED_VOICE_PRIVACY_MODE:I = 0x53

.field public static final RIL_REQUEST_CDMA_QUERY_ROAMING_PREFERENCE:I = 0x4f

.field public static final RIL_REQUEST_CDMA_QUERY_SSD_UPDATE:I = 0x804

.field public static final RIL_REQUEST_CDMA_QUERY_UIM_AUTH:I = 0x80a

.field public static final RIL_REQUEST_CDMA_QUERY_VPM:I = 0x807

.field public static final RIL_REQUEST_CDMA_REQUEST_CAVE:I = 0x801

.field public static final RIL_REQUEST_CDMA_REQUEST_MD5:I = 0x808

.field public static final RIL_REQUEST_CDMA_REQUEST_VPM:I = 0x806

.field public static final RIL_REQUEST_CDMA_SELECT_NEXT_NETWORK:I = 0x80e

.field public static final RIL_REQUEST_CDMA_SEND_SMS:I = 0x57

.field public static final RIL_REQUEST_CDMA_SET_APP_PROFILE:I = 0x7fd

.field public static final RIL_REQUEST_CDMA_SET_A_KEY:I = 0x7eb

.field public static final RIL_REQUEST_CDMA_SET_BCSMS:I = 0x7fb

.field public static final RIL_REQUEST_CDMA_SET_BROADCAST_CONFIG:I = 0x5d

.field public static final RIL_REQUEST_CDMA_SET_DDTM:I = 0x7e6

.field public static final RIL_REQUEST_CDMA_SET_FORCE_3GIND:I = 0x7ef

.field public static final RIL_REQUEST_CDMA_SET_GPSONEMODE:I = 0x7db

.field public static final RIL_REQUEST_CDMA_SET_HTC_ENROAM:I = 0x7fe

.field public static final RIL_REQUEST_CDMA_SET_HYBRID_MODE:I = 0x7e4

.field public static final RIL_REQUEST_CDMA_SET_LBSNTFY:I = 0x7f6

.field public static final RIL_REQUEST_CDMA_SET_NAI:I = 0x7ed

.field public static final RIL_REQUEST_CDMA_SET_NAM:I = 0x7e2

.field public static final RIL_REQUEST_CDMA_SET_PREFERRED_VOICE_PRIVACY_MODE:I = 0x52

.field public static final RIL_REQUEST_CDMA_SET_PROFILE:I = 0x7ec

.field public static final RIL_REQUEST_CDMA_SET_PSCALL_ENTER_DORMANCY:I = 0x7de

.field public static final RIL_REQUEST_CDMA_SET_PUSHMAIL_DORMANT_TIME:I = 0x7f0

.field public static final RIL_REQUEST_CDMA_SET_ROAMING_PREFERENCE:I = 0x4e

.field public static final RIL_REQUEST_CDMA_SET_SUBSCRIPTION_SOURCE:I = 0x4d

.field public static final RIL_REQUEST_CDMA_SET_TEST_BCSMS:I = 0x80b

.field public static final RIL_REQUEST_CDMA_SET_WIMAX_MODE:I = 0x7f3

.field public static final RIL_REQUEST_CDMA_SMS_ACKNOWLEDGE:I = 0x58

.field public static final RIL_REQUEST_CDMA_SSD_UPDATE:I = 0x803

.field public static final RIL_REQUEST_CDMA_SSD_UPDATE_CONFIRM:I = 0x805

.field public static final RIL_REQUEST_CDMA_SUBSCRIPTION:I = 0x5f

.field public static final RIL_REQUEST_CDMA_VALIDATE_AND_WRITE_AKEY:I = 0x56

.field public static final RIL_REQUEST_CDMA_WRITE_SMS_TO_RUIM:I = 0x60

.field public static final RIL_REQUEST_CELLULAR_POWER:I = 0x222

.field public static final RIL_REQUEST_CHANGE_BARRING_PASSWORD:I = 0x2c

.field public static final RIL_REQUEST_CHANGE_SIM_PIN:I = 0x6

.field public static final RIL_REQUEST_CHANGE_SIM_PIN2:I = 0x7

.field public static final RIL_REQUEST_CHECK_FDN_STATE:I = 0x21f

.field public static final RIL_REQUEST_CONFERENCE:I = 0x10

.field public static final RIL_REQUEST_CW_UW_DEREG:I = 0x7f8

.field public static final RIL_REQUEST_CW_UW_REG:I = 0x7f7

.field public static final RIL_REQUEST_DATA_CALL_LIST:I = 0x39

.field public static final RIL_REQUEST_DATA_REGISTRATION_STATE:I = 0x15

.field public static final RIL_REQUEST_DEACTIVATE_DATA_CALL:I = 0x29

.field public static final RIL_REQUEST_DELETE_BLACKLIST_ALL:I = 0x271d

.field public static final RIL_REQUEST_DELETE_BLACKLIST_ITEM:I = 0x271c

.field public static final RIL_REQUEST_DELETE_SMS_ON_SIM:I = 0x40

.field public static final RIL_REQUEST_DEVICE_IDENTITY:I = 0x62

.field public static final RIL_REQUEST_DIAL:I = 0xa

.field public static final RIL_REQUEST_DTMF:I = 0x18

.field public static final RIL_REQUEST_DTMF_START:I = 0x31

.field public static final RIL_REQUEST_DTMF_STOP:I = 0x32

.field public static final RIL_REQUEST_EHRPD_DOMAINNAME_CHANGE_STATE:I = 0x138a

.field public static final RIL_REQUEST_EHRPD_EMERGENCY_CALLBACK_MODE:I = 0x138b

.field public static final RIL_REQUEST_EHRPD_GET_CAPABILITY:I = 0x1391

.field public static final RIL_REQUEST_EHRPD_GET_DEVICE_CAPABILITY:I = 0x1392

.field public static final RIL_REQUEST_EHRPD_SET_CAPABILITY:I = 0x138c

.field public static final RIL_REQUEST_ENABLE_ALL_DAY_SLEEP:I = 0x257

.field public static final RIL_REQUEST_ENABLE_REGISTRATION_STATE_WIFI_CALLING:I = 0x248

.field public static final RIL_REQUEST_ENABLE_W2G_HANDOVER:I = 0x259

.field public static final RIL_REQUEST_ENTER_NETWORK_DEPERSONALIZATION:I = 0x8

.field public static final RIL_REQUEST_ENTER_SIM_PIN:I = 0x2

.field public static final RIL_REQUEST_ENTER_SIM_PIN2:I = 0x4

.field public static final RIL_REQUEST_ENTER_SIM_PUK:I = 0x3

.field public static final RIL_REQUEST_ENTER_SIM_PUK2:I = 0x5

.field public static final RIL_REQUEST_ENTER_SUBSIDY_LOCK_DEPERSONALIZATION:I = 0x206

.field public static final RIL_REQUEST_EXIT_EMERGENCY_CALLBACK_MODE:I = 0x63

.field public static final RIL_REQUEST_EXPLICIT_CALL_TRANSFER:I = 0x48

.field public static final RIL_REQUEST_EXTEND_BASE:I = 0x1f4

.field public static final RIL_REQUEST_GENERIC_SIM_IO:I = 0x204

.field public static final RIL_REQUEST_GET_ALS:I = 0x213

.field public static final RIL_REQUEST_GET_APN_PARAMS:I = 0x1395

.field public static final RIL_REQUEST_GET_BAND_CAPABILITY:I = 0x202

.field public static final RIL_REQUEST_GET_BAND_MODE:I = 0x23e

.field public static final RIL_REQUEST_GET_CELL_BROADCAST_MESSAGE_TYPES:I = 0x1f6

.field public static final RIL_REQUEST_GET_CLIR:I = 0x1f

.field public static final RIL_REQUEST_GET_CURRENT_CALLS:I = 0x9

.field public static final RIL_REQUEST_GET_DATA_CALL_PROFILE:I = 0x2afd

.field public static final RIL_REQUEST_GET_DATA_SUBSCRIPTION:I = 0x2b01

.field public static final RIL_REQUEST_GET_DATA_SUBSCRIPTION_SOURCE:I = 0x22a

.field public static final RIL_REQUEST_GET_DRX_INFO:I = 0x25a

.field public static final RIL_REQUEST_GET_EHRPD_APN_PARAMS:I = 0x1390

.field public static final RIL_REQUEST_GET_HTC_SIM_MODE:I = 0x22d

.field public static final RIL_REQUEST_GET_HTC_SIM_TYPES:I = 0x1393

.field public static final RIL_REQUEST_GET_HTC_UIM_TYPE:I = 0x231

.field public static final RIL_REQUEST_GET_IMEI:I = 0x26

.field public static final RIL_REQUEST_GET_IMEISV:I = 0x27

.field public static final RIL_REQUEST_GET_IMSI:I = 0xb

.field public static final RIL_REQUEST_GET_LTE_APN_PARAMS:I = 0x138e

.field public static final RIL_REQUEST_GET_MUTE:I = 0x36

.field public static final RIL_REQUEST_GET_NEIGHBORING_CELL_IDS:I = 0x4b

.field public static final RIL_REQUEST_GET_PB_ENTRIES_INFORMATION:I = 0x1f9

.field public static final RIL_REQUEST_GET_PB_ENTRIES_LENGTH:I = 0x1f8

.field public static final RIL_REQUEST_GET_PB_MEMORY:I = 0x1fb

.field public static final RIL_REQUEST_GET_PCSCF_ADDRESSES:I = 0x233

.field public static final RIL_REQUEST_GET_PHONE_FUNCTIONALITY:I = 0x20c

.field public static final RIL_REQUEST_GET_POWER_INFO:I = 0x23d

.field public static final RIL_REQUEST_GET_PREFERRED_NETWORK_TYPE:I = 0x4a

.field public static final RIL_REQUEST_GET_PREFERRED_OPERATOR_LIST:I = 0x2719

.field public static final RIL_REQUEST_GET_QOS_STATUS:I = 0x2b06

.field public static final RIL_REQUEST_GET_SECTOR_ID:I = 0x239

.field public static final RIL_REQUEST_GET_SIM_STATUS:I = 0x1

.field public static final RIL_REQUEST_GET_SIM_TYPES:I = 0x1f7

.field public static final RIL_REQUEST_GET_SMART_DATA_ROAMING_STATUS:I = 0x219

.field public static final RIL_REQUEST_GET_SMSC:I = 0x207

.field public static final RIL_REQUEST_GET_SMSC_ADDRESS:I = 0x64

.field public static final RIL_REQUEST_GET_SUBSCRIBER_NUMBER:I = 0x20d

.field public static final RIL_REQUEST_GET_SUBSIDY_LOCK_SETTINGS:I = 0x205

.field public static final RIL_REQUEST_GET_UICC_SUBSCRIPTION:I = 0x2b00

.field public static final RIL_REQUEST_GET_UICC_SUBSCRIPTION_SOURCE:I = 0x229

.field public static final RIL_REQUEST_GET_VKK_SIM_EXPIRED_STATUS:I = 0x21d

.field public static final RIL_REQUEST_GET_VOLTE_SIP_REG_FAILURE:I = 0x232

.field public static final RIL_REQUEST_GSM_BROADCAST_ACTIVATION:I = 0x5b

.field public static final RIL_REQUEST_GSM_GET_BROADCAST_CONFIG:I = 0x59

.field public static final RIL_REQUEST_GSM_SET_BROADCAST_CONFIG:I = 0x5a

.field public static final RIL_REQUEST_HANGUP:I = 0xc

.field public static final RIL_REQUEST_HANGUP_FOREGROUND_RESUME_BACKGROUND:I = 0xe

.field public static final RIL_REQUEST_HANGUP_WAITING_OR_BACKGROUND:I = 0xd

.field public static final RIL_REQUEST_HTC_PHONE_CLASS_CHANGE_DONE:I = 0x1389

.field public static final RIL_REQUEST_IMS_REGISTRATION_STATE:I = 0x2afb

.field public static final RIL_REQUEST_IMS_SEND_SMS:I = 0x2afc

.field public static final RIL_REQUEST_ISIM_AUTHENTICATION:I = 0x69

.field public static final RIL_REQUEST_ISIM_READ:I = 0x20f

.field public static final RIL_REQUEST_LAST_CALL_FAIL_CAUSE:I = 0x12

.field public static final RIL_REQUEST_LAST_DATA_CALL_FAIL_CAUSE:I = 0x38

.field public static final RIL_REQUEST_MODIFY_QOS:I = 0x2b07

.field public static final RIL_REQUEST_OEM_HOOK_RAW:I = 0x3b

.field public static final RIL_REQUEST_OEM_HOOK_STRINGS:I = 0x3c

.field public static final RIL_REQUEST_OPERATOR:I = 0x16

.field public static final RIL_REQUEST_QCT_BASE:I = 0x2af8

.field public static final RIL_REQUEST_QUERY_AVAILABLE_BAND_MODE:I = 0x42

.field public static final RIL_REQUEST_QUERY_AVAILABLE_NETWORKS:I = 0x30

.field public static final RIL_REQUEST_QUERY_AVAILABLE_NETWORKS_APPEND_ACT:I = 0x21c

.field public static final RIL_REQUEST_QUERY_CALL_FORWARD_STATUS:I = 0x21

.field public static final RIL_REQUEST_QUERY_CALL_WAITING:I = 0x23

.field public static final RIL_REQUEST_QUERY_CLIP:I = 0x37

.field public static final RIL_REQUEST_QUERY_DEVICE_MEMORY:I = 0x1fe

.field public static final RIL_REQUEST_QUERY_FACILITY_LOCK:I = 0x2a

.field public static final RIL_REQUEST_QUERY_ISIM_SUPPORTED:I = 0x210

.field public static final RIL_REQUEST_QUERY_NETWORK_SELECTION_MODE:I = 0x2d

.field public static final RIL_REQUEST_QUERY_QMI_UIM_AUTH:I = 0x238

.field public static final RIL_REQUEST_QUERY_TTY_MODE:I = 0x51

.field public static final RIL_REQUEST_RADIO_POWER:I = 0x17

.field public static final RIL_REQUEST_RELEASE_ALL_VOICE_CALLS:I = 0x217

.field public static final RIL_REQUEST_RELEASE_QOS:I = 0x2b05

.field public static final RIL_REQUEST_REMOVE_PREFERRED_OPERATOR_LIST:I = 0x2717

.field public static final RIL_REQUEST_REPORT_SMS_MEMORY_STATUS:I = 0x66

.field public static final RIL_REQUEST_REPORT_STK_SERVICE_IS_RUNNING:I = 0x67

.field public static final RIL_REQUEST_RESET_RADIO:I = 0x3a

.field public static final RIL_REQUEST_RESET_WSIM_STATE:I = 0x221

.field public static final RIL_REQUEST_RESUME_QOS:I = 0x2b09

.field public static final RIL_REQUEST_SCREEN_STATE:I = 0x3d

.field public static final RIL_REQUEST_SEND_ECC_USSD:I = 0x220

.field public static final RIL_REQUEST_SEND_SMS:I = 0x19

.field public static final RIL_REQUEST_SEND_SMS_EXPECT_MORE:I = 0x1a

.field public static final RIL_REQUEST_SEND_SMS_EXPECT_MORE_EXTENDED:I = 0x201

.field public static final RIL_REQUEST_SEND_SMS_EXTENDED:I = 0x200

.field public static final RIL_REQUEST_SEND_SMS_LAST_PAGE:I = 0x21a

.field public static final RIL_REQUEST_SEND_TAMCMD:I = 0x23c

.field public static final RIL_REQUEST_SEND_USSD:I = 0x1d

.field public static final RIL_REQUEST_SEPARATE_CONNECTION:I = 0x34

.field public static final RIL_REQUEST_SETUP_AGPS_SERVER:I = 0x209

.field public static final RIL_REQUEST_SETUP_DATA_CALL:I = 0x1b

.field public static final RIL_REQUEST_SETUP_QOS:I = 0x2b04

.field public static final RIL_REQUEST_SET_AGPS_HOSTNAME:I = 0x20b

.field public static final RIL_REQUEST_SET_ALS:I = 0x214

.field public static final RIL_REQUEST_SET_APN_PARAMS:I = 0x1394

.field public static final RIL_REQUEST_SET_BAND_MODE:I = 0x41

.field public static final RIL_REQUEST_SET_BLACKLIST:I = 0x271a

.field public static final RIL_REQUEST_SET_BLACKLIST_UNKNOWN:I = 0x271e

.field public static final RIL_REQUEST_SET_CALL_FORWARD:I = 0x22

.field public static final RIL_REQUEST_SET_CALL_WAITING:I = 0x24

.field public static final RIL_REQUEST_SET_CELL_BROADCAST_MESSAGE_TYPES:I = 0x1f5

.field public static final RIL_REQUEST_SET_CLIP:I = 0x203

.field public static final RIL_REQUEST_SET_CLIR:I = 0x20

.field public static final RIL_REQUEST_SET_DATA_SUBSCRIPTION:I = 0x2aff

.field public static final RIL_REQUEST_SET_DATA_SUBSCRIPTION_SOURCE:I = 0x228

.field public static final RIL_REQUEST_SET_DEVICE_MEMORY:I = 0x1ff

.field public static final RIL_REQUEST_SET_EHRPD_APN_PARAMS:I = 0x138f

.field public static final RIL_REQUEST_SET_EMERGENCY_CALL_CATEGORY:I = 0x21e

.field public static final RIL_REQUEST_SET_FACILITY_LOCK:I = 0x2b

.field public static final RIL_REQUEST_SET_FAST_DORMANCY:I = 0x23b

.field public static final RIL_REQUEST_SET_HTC_SIM_MODE:I = 0x22e

.field public static final RIL_REQUEST_SET_ISIM_AUTH:I = 0x20e

.field public static final RIL_REQUEST_SET_LOCATION_UPDATES:I = 0x4c

.field public static final RIL_REQUEST_SET_LTE_APN_PARAMS:I = 0x138d

.field public static final RIL_REQUEST_SET_MULTI_RAB_TRAFFIC_THROTTLING:I = 0x23a

.field public static final RIL_REQUEST_SET_MUTE:I = 0x35

.field public static final RIL_REQUEST_SET_NETWORK_SELECTION_AUTOMATIC:I = 0x2e

.field public static final RIL_REQUEST_SET_NETWORK_SELECTION_MANUAL:I = 0x2f

.field public static final RIL_REQUEST_SET_NETWORK_SELECTION_MANUAL_APPEND_ACT:I = 0x21b

.field public static final RIL_REQUEST_SET_NETWORK_SELECTION_MANUAL_EXT:I = 0x2716

.field public static final RIL_REQUEST_SET_PB_ENTRIES_INFORMATION:I = 0x1fa

.field public static final RIL_REQUEST_SET_PB_MEMORY:I = 0x2713

.field public static final RIL_REQUEST_SET_PDN_PROFILE:I = 0x223

.field public static final RIL_REQUEST_SET_PDP_FAST_DORMANCY:I = 0x216

.field public static final RIL_REQUEST_SET_PREFERRED_NETWORK_TYPE:I = 0x49

.field public static final RIL_REQUEST_SET_RSSI_LOGGING:I = 0x230

.field public static final RIL_REQUEST_SET_RX_DIVERSITY:I = 0x22f

.field public static final RIL_REQUEST_SET_SMART_DATA_ROAMING:I = 0x218

.field public static final RIL_REQUEST_SET_SMSC:I = 0x208

.field public static final RIL_REQUEST_SET_SMSC_ADDRESS:I = 0x65

.field public static final RIL_REQUEST_SET_SUBSCRIPTION_MODE:I = 0x2b02

.field public static final RIL_REQUEST_SET_SUPP_SVC_NOTIFICATION:I = 0x3e

.field public static final RIL_REQUEST_SET_TRANSMIT_POWER:I = 0x2b03

.field public static final RIL_REQUEST_SET_TTYMODE:I = 0x20a

.field public static final RIL_REQUEST_SET_TTY_MODE:I = 0x50

.field public static final RIL_REQUEST_SET_UICC_SUBSCRIPTION:I = 0x2afe

.field public static final RIL_REQUEST_SET_UICC_SUBSCRIPTION_SOURCE:I = 0x227

.field public static final RIL_REQUEST_SIGNAL_STRENGTH:I = 0x13

.field public static final RIL_REQUEST_SIM_APDU:I = 0x234

.field public static final RIL_REQUEST_SIM_CLOSE_CHANNEL:I = 0x236

.field public static final RIL_REQUEST_SIM_IO:I = 0x1c

.field public static final RIL_REQUEST_SIM_OPEN_CHANNEL:I = 0x235

.field public static final RIL_REQUEST_SIM_TRANSMIT_CHANNEL:I = 0x237

.field public static final RIL_REQUEST_SMS_ACKNOWLEDGE:I = 0x25

.field public static final RIL_REQUEST_STK_GET_PROFILE:I = 0x43

.field public static final RIL_REQUEST_STK_HANDLE_CALL_SETUP_REQUESTED_FROM_SIM:I = 0x47

.field public static final RIL_REQUEST_STK_SEND_ENVELOPE_COMMAND:I = 0x45

.field public static final RIL_REQUEST_STK_SEND_ENVELOPE_WITH_STATUS:I = 0x6b

.field public static final RIL_REQUEST_STK_SEND_TERMINAL_RESPONSE:I = 0x46

.field public static final RIL_REQUEST_STK_SET_PROFILE:I = 0x44

.field public static final RIL_REQUEST_SUSPEND_QOS:I = 0x2b08

.field public static final RIL_REQUEST_SWITCH_NETWORK_TYPE_WIFI_CALLING:I = 0x247

.field public static final RIL_REQUEST_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE:I = 0xf

.field public static final RIL_REQUEST_UDUB:I = 0x11

.field public static final RIL_REQUEST_UICC_AKA_AUTHENTICATE:I = 0x243

.field public static final RIL_REQUEST_UICC_APPLICATION_IO:I = 0x241

.field public static final RIL_REQUEST_UICC_DEACTIVATE_APPLICATION:I = 0x240

.field public static final RIL_REQUEST_UICC_GBA_AUTHENTICATE_BOOTSTRAP:I = 0x244

.field public static final RIL_REQUEST_UICC_GBA_AUTHENTICATE_NAF:I = 0x245

.field public static final RIL_REQUEST_UICC_SELECT_APPLICATION:I = 0x23f

.field public static final RIL_REQUEST_UICC_SIM_AUTHENTICATE:I = 0x242

.field public static final RIL_REQUEST_VOICE_RADIO_TECH:I = 0x2afa

.field public static final RIL_REQUEST_VOICE_REGISTRATION_STATE:I = 0x14

.field public static final RIL_REQUEST_VT_ANSWER:I = 0x2720

.field public static final RIL_REQUEST_VT_CHUP:I = 0x2712

.field public static final RIL_REQUEST_VT_DIAL:I = 0x2711

.field public static final RIL_REQUEST_VT_HANGUP:I = 0x271f

.field public static final RIL_REQUEST_WP_BASE:I = 0x1388

.field public static final RIL_REQUEST_WRITE_SMS_TO_SIM:I = 0x3f

.field public static final RIL_RESTRICTED_STATE_CS_ALL:I = 0x4

.field public static final RIL_RESTRICTED_STATE_CS_EMERGENCY:I = 0x1

.field public static final RIL_RESTRICTED_STATE_CS_NORMAL:I = 0x2

.field public static final RIL_RESTRICTED_STATE_NONE:I = 0x0

.field public static final RIL_RESTRICTED_STATE_PS_ALL:I = 0x10

.field public static final RIL_RUIM_CARD:I = 0x7

.field public static final RIL_SIM_FAIL:I = 0x6

.field public static final RIL_TESTSIM_2G_SIM_CARD:I = 0x81

.field public static final RIL_TESTSIM_3G_SIM_CARD:I = 0x82

.field public static final RIL_TETHERED_MODE_OFF:I = 0x0

.field public static final RIL_TETHERED_MODE_ON:I = 0x1

.field public static final RIL_TITAN_LITE_SIM_CARD:I = 0x3

.field public static final RIL_UNSOL_CALL_RING:I = 0x3fa

.field public static final RIL_UNSOL_CALL_WAITING_TONE:I = 0x5f6

.field public static final RIL_UNSOL_CDMA_3G_INDICATOR:I = 0xbc1

.field public static final RIL_UNSOL_CDMA_BASE:I = 0xbb8

.field public static final RIL_UNSOL_CDMA_CALL_WAITING:I = 0x401

.field public static final RIL_UNSOL_CDMA_CT_MCC_MNC_CHANGE:I = 0xbd1

.field public static final RIL_UNSOL_CDMA_CT_MODE_CHANGE:I = 0xbd0

.field public static final RIL_UNSOL_CDMA_E911_STATUS_CHANGED:I = 0xbb9

.field public static final RIL_UNSOL_CDMA_ENHANCE_ROAMING_INDICATOR:I = 0xbc4

.field public static final RIL_UNSOL_CDMA_INFO_REC:I = 0x403

.field public static final RIL_UNSOL_CDMA_LBS:I = 0xbcd

.field public static final RIL_UNSOL_CDMA_LOOPBACK_MODE:I = 0xbba

.field public static final RIL_UNSOL_CDMA_MESSAGE_WAITING_INDICATOR:I = 0xbc3

.field public static final RIL_UNSOL_CDMA_NETWORK_BASE_PLUSCODE_DIAL:I = 0xbcc

.field public static final RIL_UNSOL_CDMA_NETWORK_BUSY:I = 0xbbc

.field public static final RIL_UNSOL_CDMA_OMA_DM_TRIGGER:I = 0xbc9

.field public static final RIL_UNSOL_CDMA_OTA_PROVISION_STATUS:I = 0x402

.field public static final RIL_UNSOL_CDMA_POSITION_DETERMINATION_SESSION_STATUS:I = 0xbc5

.field public static final RIL_UNSOL_CDMA_PRL_CHANGED:I = 0x408

.field public static final RIL_UNSOL_CDMA_PS_FAIL_MSGID:I = 0xbca

.field public static final RIL_UNSOL_CDMA_REDIRECT_PARTY_NUMBER:I = 0xbc8

.field public static final RIL_UNSOL_CDMA_RUIM_SMS_STORAGE_FULL:I = 0x3fe

.field public static final RIL_UNSOL_CDMA_SERVICE_DOMAIN_CHANGE:I = 0xbcf

.field public static final RIL_UNSOL_CDMA_SIGNAL_FADE:I = 0xbcb

.field public static final RIL_UNSOL_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x407

.field public static final RIL_UNSOL_CDMA_SYSTEMINFO_CHANGED:I = 0xbc0

.field public static final RIL_UNSOL_CDMA_TONE_SIGNALS:I = 0xbc6

.field public static final RIL_UNSOL_CLI_INFORMATION:I = 0x5e3

.field public static final RIL_UNSOL_CNAP_INFORMATION:I = 0x5ec

.field public static final RIL_UNSOL_COL_INFORMATION:I = 0x5e7

.field public static final RIL_UNSOL_CREG_STATE_CHANGED:I = 0x4e25

.field public static final RIL_UNSOL_CW_INFORMATION:I = 0x5e6

.field public static final RIL_UNSOL_CW_UW_REG_CHANGED:I = 0xbce

.field public static final RIL_UNSOL_DATA_CALL_LIST_CHANGED:I = 0x3f2

.field public static final RIL_UNSOL_DEVICE_SMS_STORAGE_FULL:I = 0x5e5

.field public static final RIL_UNSOL_ECC_USSD:I = 0x5fa

.field public static final RIL_UNSOL_ENTER_EMERGENCY_CALLBACK_MODE:I = 0x400

.field public static final RIL_UNSOL_ENTER_LPM:I = 0x5f3

.field public static final RIL_UNSOL_EXIT_EMERGENCY_CALLBACK_MODE:I = 0x409

.field public static final RIL_UNSOL_EXTEND_BASE:I = 0x5dc

.field public static final RIL_UNSOL_HOMEZONE_DCH_STATUS:I = 0x5ed

.field public static final RIL_UNSOL_HTC_CALL_FAIL_NOTICE:I = 0x4e23

.field public static final RIL_UNSOL_HTC_ECC_AVAILABLE:I = 0x4e22

.field public static final RIL_UNSOL_HTC_REJECTED_MT_CALL:I = 0x4e24

.field public static final RIL_UNSOL_LINE_CONTROL:I = 0x5f7

.field public static final RIL_UNSOL_MANUAL_REG_STATE:I = 0x605

.field public static final RIL_UNSOL_MM_LU_FAILED_CAUSE:I = 0x5ea

.field public static final RIL_UNSOL_MODEM_LINK_STATUS:I = 0x5ee

.field public static final RIL_UNSOL_NITZ_TIME_RECEIVED:I = 0x3f0

.field public static final RIL_UNSOL_OEM_HOOK_RAW:I = 0x404

.field public static final RIL_UNSOL_ON_SS:I = 0x5210

.field public static final RIL_UNSOL_ON_USSD:I = 0x3ee

.field public static final RIL_UNSOL_ON_USSD_REQUEST:I = 0x3ef

.field public static final RIL_UNSOL_PCSCF_ADDRESS:I = 0x5eb

.field public static final RIL_UNSOL_PHONE_BOOK_READY:I = 0x5f2

.field public static final RIL_UNSOL_PUK1_OR_PUK2_LOCK:I = 0x5e9

.field public static final RIL_UNSOL_QCT_BASE:I = 0x5208

.field public static final RIL_UNSOL_QOS_STATE_CHANGED_IND:I = 0x5213

.field public static final RIL_UNSOL_RESEND_INCALL_MUTE:I = 0x406

.field public static final RIL_UNSOL_RESPONSE_ACDB_TABLE_CHANGED:I = 0x5f8

.field public static final RIL_UNSOL_RESPONSE_BASE:I = 0x3e8

.field public static final RIL_UNSOL_RESPONSE_CALL_STATE_CHANGED:I = 0x3e9

.field public static final RIL_UNSOL_RESPONSE_CDMA_NEW_SMS:I = 0x3fc

.field public static final RIL_UNSOL_RESPONSE_DATA_NETWORK_STATE_CHANGED:I = 0x520f

.field public static final RIL_UNSOL_RESPONSE_DIAL_TONE_END:I = 0x5e4

.field public static final RIL_UNSOL_RESPONSE_EHRPD_DOMAINNAME_CHANGE:I = 0x1776

.field public static final RIL_UNSOL_RESPONSE_EHRPD_EMERGENCY_CALLBACK_MODE_CHANGE:I = 0x1777

.field public static final RIL_UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED:I = 0x520d

.field public static final RIL_UNSOL_RESPONSE_NETWORK_MODE_CHANGE:I = 0x1773

.field public static final RIL_UNSOL_RESPONSE_NEW_BROADCAST_SMS:I = 0x3fd

.field public static final RIL_UNSOL_RESPONSE_NEW_CBM:I = 0x5dd

.field public static final RIL_UNSOL_RESPONSE_NEW_CBM_ON_SIM:I = 0x5de

.field public static final RIL_UNSOL_RESPONSE_NEW_SMS:I = 0x3eb

.field public static final RIL_UNSOL_RESPONSE_NEW_SMS_ON_SIM:I = 0x3ed

.field public static final RIL_UNSOL_RESPONSE_NEW_SMS_STATUS_REPORT:I = 0x3ec

.field public static final RIL_UNSOL_RESPONSE_PHONE_MODE_CHANGE:I = 0x1772

.field public static final RIL_UNSOL_RESPONSE_PS_NEW_CDMA_SMS:I = 0x1774

.field public static final RIL_UNSOL_RESPONSE_RADIO_STATE_CHANGED:I = 0x3e8

.field public static final RIL_UNSOL_RESPONSE_RADIO_TECH_CHANGE:I = 0x1771

.field public static final RIL_UNSOL_RESPONSE_SIM_STATUS_CHANGED:I = 0x3fb

.field public static final RIL_UNSOL_RESPONSE_TETHERED_MODE_STATE_CHANGED:I = 0x520e

.field public static final RIL_UNSOL_RESPONSE_VOICE_NETWORK_STATE_CHANGED:I = 0x3ea

.field public static final RIL_UNSOL_RESTRICTED_STATE_CHANGED:I = 0x3ff

.field public static final RIL_UNSOL_RIL_CONNECTED:I = 0x40a

.field public static final RIL_UNSOL_RINGBACK_TONE:I = 0x405

.field public static final RIL_UNSOL_RSSI_REPORT:I = 0x606

.field public static final RIL_UNSOL_SIGNAL_STRENGTH:I = 0x3f1

.field public static final RIL_UNSOL_SIM_APPLICATION_REFRESH:I = 0x608

.field public static final RIL_UNSOL_SIM_HOT_SWAP:I = 0x5f9

.field public static final RIL_UNSOL_SIM_REFRESH:I = 0x3f9

.field public static final RIL_UNSOL_SIM_SMS_STORAGE_FULL:I = 0x3f8

.field public static final RIL_UNSOL_SIM_SWAP_STATUS:I = 0x5f5

.field public static final RIL_UNSOL_SMART_DATA_ROAMING_STATUS:I = 0x5ef

.field public static final RIL_UNSOL_SMART_NETWORK:I = 0x60c

.field public static final RIL_UNSOL_STK_CALL_SETUP:I = 0x3f7

.field public static final RIL_UNSOL_STK_CC_ALPHA_NOTIFY:I = 0x5211

.field public static final RIL_UNSOL_STK_EVENT_NOTIFY:I = 0x3f6

.field public static final RIL_UNSOL_STK_PROACTIVE_COMMAND:I = 0x3f5

.field public static final RIL_UNSOL_STK_SESSION_END:I = 0x3f4

.field public static final RIL_UNSOL_SUPP_SVC_NOTIFICATION:I = 0x3f3

.field public static final RIL_UNSOL_T3G_PSDBG:I = 0x4e21

.field public static final RIL_UNSOL_TPMR_ID:I = 0x5f4

.field public static final RIL_UNSOL_UICC_APPLICATION_STATUS:I = 0x609

.field public static final RIL_UNSOL_UICC_SUBSCRIPTION_STATUS_CHANGED:I = 0x5212

.field public static final RIL_UNSOL_VKK_SIM_EXPIRED_STATUS:I = 0x5f0

.field public static final RIL_UNSOL_VOICE_RADIO_TECH_CHANGED:I = 0x520c

.field public static final RIL_UNSOL_WP_BASE:I = 0x1770

.field public static final RIL_WIBRO_ONLY_SIM_CARD:I = 0x5

.field public static final SETUP_DATA_AUTH_CHAP:I = 0x2

.field public static final SETUP_DATA_AUTH_NONE:I = 0x0

.field public static final SETUP_DATA_AUTH_PAP:I = 0x1

.field public static final SETUP_DATA_AUTH_PAP_CHAP:I = 0x3

.field public static final SETUP_DATA_CALL_FAILURE:I = 0x10

.field public static final SETUP_DATA_CALL_FAILURE_CMAIL:I = 0x12

.field public static final SETUP_DATA_PROTOCOL_IP:Ljava/lang/String; = "IP"

.field public static final SETUP_DATA_PROTOCOL_IPV4V6:Ljava/lang/String; = "IPV4V6"

.field public static final SETUP_DATA_PROTOCOL_IPV6:Ljava/lang/String; = "IPV6"

.field public static final SETUP_DATA_TECH_CDMA:I = 0x0

.field public static final SETUP_DATA_TECH_GSM:I = 0x1

.field public static final SIM_ABSENT:I = 0xb

.field public static final SIM_FAIL:I = 0x64

.field public static final SIM_PIN2:I = 0x4

.field public static final SIM_PUK2:I = 0x5

.field public static final SIP_PHONE:I = 0x3

.field public static final SMS_SEND_FAIL_RETRY:I = 0xa

.field public static final SS_MODIFIED_TO_DIAL:I = 0xdf

.field public static final SS_MODIFIED_TO_SS:I = 0xe1

.field public static final SS_MODIFIED_TO_USSD:I = 0xe0

.field public static final SUBSCRIPTION_FROM_NV:I = 0x1

.field public static final SUBSCRIPTION_FROM_RUIM:I = 0x0

.field public static final SUBSCRIPTION_NOT_AVAILABLE:I = 0xc

.field public static final SUBSCRIPTION_NOT_SUPPORTED:I = 0xe2

.field public static final SUCCESS:I = 0x0

.field public static final USSD_MODIFIED_TO_DIAL:I = 0xdc

.field public static final USSD_MODIFIED_TO_SS:I = 0xdd

.field public static final USSD_MODIFIED_TO_USSD:I = 0xde
