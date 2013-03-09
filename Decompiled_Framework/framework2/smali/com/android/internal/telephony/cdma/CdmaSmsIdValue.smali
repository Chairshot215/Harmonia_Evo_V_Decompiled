.class public Lcom/android/internal/telephony/cdma/CdmaSmsIdValue;
.super Ljava/lang/Object;
.source "CdmaSmsIdValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;,
        Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;
    }
.end annotation


# static fields
.field public static final ABSOLUTE_TIME_FIELD_DAY:B = 0x2t

.field public static final ABSOLUTE_TIME_FIELD_HOUR:B = 0x3t

.field public static final ABSOLUTE_TIME_FIELD_MINUTE:B = 0x4t

.field public static final ABSOLUTE_TIME_FIELD_MONTH:B = 0x1t

.field public static final ABSOLUTE_TIME_FIELD_SECOND:B = 0x5t

.field public static final ABSOLUTE_TIME_FIELD_YEAR:B = 0x0t

.field public static final ALERT_ON_BROADCAST_SERVICE_DEFAULT:B = 0x1t

.field public static final ALERT_ON_BROADCAST_SERVICE_HIGH_PRIORITY_ALERT_ONCE:B = 0xat

.field public static final ALERT_ON_BROADCAST_SERVICE_HIGH_PRIORITY_ALERT_REPEAT:B = 0xbt

.field public static final ALERT_ON_BROADCAST_SERVICE_LOW_PRIORITY_ALERT_ONCE:B = 0x6t

.field public static final ALERT_ON_BROADCAST_SERVICE_LOW_PRIORITY_ALERT_REPEAT:B = 0x7t

.field public static final ALERT_ON_BROADCAST_SERVICE_MIDDLE_PRIORITY_ALERT_ONCE:B = 0x8t

.field public static final ALERT_ON_BROADCAST_SERVICE_MIDDLE_PRIORITY_ALERT_REPEAT:B = 0x9t

.field public static final ALERT_ON_BROADCAST_SERVICE_NO_ALERT:B = 0x0t

.field public static final ALERT_ON_BROADCAST_SERVICE_VIBRATE_ONCE:B = 0x2t

.field public static final ALERT_ON_BROADCAST_SERVICE_VIBRATE_REPEAT:B = 0x3t

.field public static final ALERT_ON_BROADCAST_SERVICE_VISUAL_ONCE:B = 0x4t

.field public static final ALERT_ON_BROADCAST_SERVICE_VISUAL_REPEAT:B = 0x5t

.field public static final ALERT_ON_DELIVERY_USE_HIGH_PRIORITY:B = 0x3t

.field public static final ALERT_ON_DELIVERY_USE_LOW_PRIORITY:B = 0x1t

.field public static final ALERT_ON_DELIVERY_USE_MEDIUM_PRIORITY:B = 0x2t

.field public static final ALERT_ON_DELIVERY_USE_MOBILE_DEFAULT:B = 0x0t

.field public static final BROADCAST_SERVICE_SETTING_ADD:B = 0x1t

.field public static final BROADCAST_SERVICE_SETTING_DELETE:B = 0x0t

.field public static final BROADCAST_SERVICE_SETTING_DELETE_ALL:B = 0x2t

.field public static final BROADCAST_SERVICE_SETTING_RESULT_ALREADY_SET:B = 0x3t

.field public static final BROADCAST_SERVICE_SETTING_RESULT_HAVENT_BEEN_SET:B = 0x4t

.field public static final BROADCAST_SERVICE_SETTING_RESULT_INVALID_ALERT_OPTION:B = 0x6t

.field public static final BROADCAST_SERVICE_SETTING_RESULT_INVALID_MAX_MESSAGES:B = 0x5t

.field public static final BROADCAST_SERVICE_SETTING_RESULT_INVALID_SERVICE_CATEGORY_NAME:B = 0x7t

.field public static final BROADCAST_SERVICE_SETTING_RESULT_LIMIT_EXCEEDED:B = 0x2t

.field public static final BROADCAST_SERVICE_SETTING_RESULT_MEMORY_LIMIT_EXCEEDED:B = 0x1t

.field public static final BROADCAST_SERVICE_SETTING_RESULT_SUCCESSFUL:B = 0x0t

.field public static final BROADCAST_SERVICE_SETTING_RESULT_UNSPECIFIED_FAILURE:B = 0x8t

.field public static final CAUSE_DETAIL_ADDRESS_TRANSLATION_FAILURE:S = 0x1s

.field public static final CAUSE_DETAIL_ADDRESS_VACANT:S = 0x0s

.field public static final CAUSE_DETAIL_DESTINATION_BUSY:S = 0x21s

.field public static final CAUSE_DETAIL_DESTINATION_NO_LONGER_AT_THIS_ADDRESS:S = 0x26s

.field public static final CAUSE_DETAIL_DESTINATION_OUT_OF_SERVICE:S = 0x25s

.field public static final CAUSE_DETAIL_DESTINATION_RESOURCE_SHORTAGE:S = 0x23s

.field public static final CAUSE_DETAIL_ENCODING_PROBLEM:S = 0x60s

.field public static final CAUSE_DETAIL_INVALID_TELESERVICE_ID:S = 0x4s

.field public static final CAUSE_DETAIL_MISSING_EXPECTED_PARAMETER:S = 0x66s

.field public static final CAUSE_DETAIL_MISSING_MANDATORY_PARAMETER:S = 0x67s

.field public static final CAUSE_DETAIL_NETWORK_FAILURE:S = 0x3s

.field public static final CAUSE_DETAIL_NETWORK_RESOURCE_SHORTAGE:S = 0x2s

.field public static final CAUSE_DETAIL_NO_ACKNOWLEDGMENT:S = 0x22s

.field public static final CAUSE_DETAIL_NO_PAGE_RESPONSE:S = 0x20s

.field public static final CAUSE_DETAIL_OTHER_GENERAL_PROBLEMS:S = 0x6bs

.field public static final CAUSE_DETAIL_OTHER_NETWORK_PROBLEM:S = 0x5s

.field public static final CAUSE_DETAIL_OTHER_RADIO_INTERFACE_PROBLEM:S = 0x42s

.field public static final CAUSE_DETAIL_OTHER_TERMINAL_PROBLEM:S = 0x27s

.field public static final CAUSE_DETAIL_RADIO_INTERFACE_INCOMPATIBILITY:S = 0x41s

.field public static final CAUSE_DETAIL_RADIO_INTERFACE_RESOURCE_SHORTAGE:S = 0x40s

.field public static final CAUSE_DETAIL_RESERVED:S = 0x65s

.field public static final CAUSE_DETAIL_SMS_DELIVERY_POSTPONED:S = 0x24s

.field public static final CAUSE_DETAIL_SMS_NOT_SUPPORTED:S = 0x64s

.field public static final CAUSE_DETAIL_SMS_ORIGINATION_DENIED:S = 0x61s

.field public static final CAUSE_DETAIL_SMS_TERMINATION_DENIED:S = 0x62s

.field public static final CAUSE_DETAIL_SUPPLEMENTARY_SERVICE_NOT_SUPPORTED:S = 0x63s

.field public static final CAUSE_DETAIL_UNEXPECTED_PARAMETER_VALUE:S = 0x69s

.field public static final CAUSE_DETAIL_UNRECOGNIZED_PARAMETER_VALUE:S = 0x68s

.field public static final CAUSE_DETAIL_USER_DATA_SIZE_ERROR:S = 0x6as

.field public static final CHARi_ENCODING_7BIT_ASCII:B = 0x2t

.field public static final CHARi_ENCODING_EXTENDED_PROTOCOL_MESSAGE:B = 0x1t

.field public static final CHARi_ENCODING_GSM_7BIT:B = 0x9t

.field public static final CHARi_ENCODING_GSM_DATA_CODING_SCHEME:B = 0xat

.field public static final CHARi_ENCODING_IA5:B = 0x3t

.field public static final CHARi_ENCODING_KOREAN:B = 0x6t

.field public static final CHARi_ENCODING_LATIN:B = 0x8t

.field public static final CHARi_ENCODING_LATIN_HEBREW:B = 0x7t

.field public static final CHARi_ENCODING_OCTET:B = 0x0t

.field public static final CHARi_ENCODING_SHIFT_JIS:B = 0x5t

.field public static final CHARi_ENCODING_UNICODE:B = 0x4t

.field public static final DISPLAY_MODE_FACTORY_DEFAULT:B = 0x1t

.field public static final DISPLAY_MODE_IMMEDIATE:B = 0x0t

.field public static final DISPLAY_MODE_RESERVED:B = 0x3t

.field public static final DISPLAY_MODE_USER_DEFINED:B = 0x2t

.field public static final DOWNLOAD_MODE_NONE:B = 0x0t

.field public static final DOWNLOAD_MODE_PP_PRL:B = 0x30t

.field public static final DOWNLOAD_MODE_PP_VAS:B = 0x20t

.field public static final DOWNLOAD_MODE_UPDATE_PRL:B = 0x10t

.field public static final ERROR_CLASS_NO_ERROR:S = 0x0s

.field public static final ERROR_CLASS_PERMANENT:S = 0x3s

.field public static final ERROR_CLASS_TEMPORARY:S = 0x2s

.field public static final ERROR_DETAIL_NO_ERROR_MESSAGE_ACCEPTED:S = 0x0s

.field public static final ERROR_DETAIL_NO_ERROR_MESSAGE_CANCELLED:S = 0x3s

.field public static final ERROR_DETAIL_NO_ERROR_MESSAGE_DELIVERED:S = 0x2s

.field public static final ERROR_DETAIL_NO_ERROR_MESSAGE_DEPOSITED_TO_INTERNET:S = 0x1s

.field public static final ERROR_DETAIL_PERMANENT_BLOCKED_DESTINATION:S = 0x7s

.field public static final ERROR_DETAIL_PERMANENT_CANCEL_FAILED:S = 0x6s

.field public static final ERROR_DETAIL_PERMANENT_DUPLICATE_MESSAGE:S = 0x9s

.field public static final ERROR_DETAIL_PERMANENT_INVALID_DESTINATION:S = 0xas

.field public static final ERROR_DETAIL_PERMANENT_MESSAGE_EXPIRED:S = 0xds

.field public static final ERROR_DETAIL_PERMANENT_NETWORK_CONGESTION:S = 0x4s

.field public static final ERROR_DETAIL_PERMANENT_NETWORK_ERROR:S = 0x5s

.field public static final ERROR_DETAIL_PERMANENT_TEXT_TOO_LONG:S = 0x8s

.field public static final ERROR_DETAIL_PERMANENT_UNKNOWN_ERROR:S = 0x1fs

.field public static final ERROR_DETAIL_TEMPORARY_NETWORK_CONGESTION:S = 0x4s

.field public static final ERROR_DETAIL_TEMPORARY_NETWORK_ERROR:S = 0x5s

.field public static final ERROR_DETAIL_TEMPORARY_UNKNOWN_ERROR:S = 0x1fs

.field public static final LANGUAGE_CHINESE:B = 0x6t

.field public static final LANGUAGE_ENGLISH:B = 0x1t

.field public static final LANGUAGE_FRENCH:B = 0x2t

.field public static final LANGUAGE_HEBREW:B = 0x7t

.field public static final LANGUAGE_JAPANESE:B = 0x4t

.field public static final LANGUAGE_KOREAN:B = 0x5t

.field public static final LANGUAGE_SPANISH:B = 0x3t

.field public static final NUMBERING_PLAN_DATA:B = 0x3t

.field public static final NUMBERING_PLAN_PRIVATE:B = 0x9t

.field public static final NUMBERING_PLAN_TELEPHONY:B = 0x1t

.field public static final NUMBERING_PLAN_TELEX:B = 0x4t

.field public static final NUMBERING_PLAN_UNKNOWN:B = 0x0t

.field public static final NUMBERING_TYPE_ABBREVIATED:B = 0x6t

.field public static final NUMBERING_TYPE_INTERNATIONAL:B = 0x1t

.field public static final NUMBERING_TYPE_INTERNET_EMAIL_ADDRESS:B = 0x2t

.field public static final NUMBERING_TYPE_INTERNET_PROTOCOL:B = 0x1t

.field public static final NUMBERING_TYPE_NATIONAL:B = 0x2t

.field public static final NUMBERING_TYPE_NETWORK_SPECIFIC:B = 0x3t

.field public static final NUMBERING_TYPE_SUBSCRIBER:B = 0x4t

.field public static final NUMBERING_TYPE_UNKNOWN:B = 0x0t

.field public static final PARAMETER_ID_BEARER_DATA:B = 0x8t

.field public static final PARAMETER_ID_BEARER_REPLY_OPTION:B = 0x6t

.field public static final PARAMETER_ID_CAUSE_CODES:B = 0x7t

.field public static final PARAMETER_ID_DESTINATION_ADDRESS:B = 0x4t

.field public static final PARAMETER_ID_DESTINATION_SUBADDRESS:B = 0x5t

.field public static final PARAMETER_ID_ORIGINATING_ADDRESS:B = 0x2t

.field public static final PARAMETER_ID_ORIGINATING_SUBADDRESS:B = 0x3t

.field public static final PARAMETER_ID_SERVICE_CATEGORY:B = 0x1t

.field public static final PARAMETER_ID_TELESERVICE_IDENTIFIER:B = 0x0t

.field public static final PARAMETER_IDs:B = 0x9t

.field public static final PRIORITY_LEVEL_EMERGENCY:B = 0x3t

.field public static final PRIORITY_LEVEL_INTERACTIVE:B = 0x1t

.field public static final PRIORITY_LEVEL_NORMAL:B = 0x0t

.field public static final PRIORITY_LEVEL_URGENT:B = 0x2t

.field public static final PRIVACY_LEVEL_CONFIDENTIAL:B = 0x2t

.field public static final PRIVACY_LEVEL_NOT_RESTRICTED:B = 0x0t

.field public static final PRIVACY_LEVEL_RESTRICTED:B = 0x1t

.field public static final PRIVACY_LEVEL_SECRET:B = 0x3t

.field public static final RELATIVE_TIME_FIELD_DAY:B = 0x1t

.field public static final RELATIVE_TIME_FIELD_HOUR:B = 0x2t

.field public static final RELATIVE_TIME_FIELD_MINUTE:B = 0x3t

.field public static final RELATIVE_TIME_FIELD_WEEK:B = 0x0t

.field public static final SERVICE_TYPE_ADMINISTRATIVE:I = 0x2

.field public static final SERVICE_TYPE_ADVERTISEMENTS:I = 0x1a

.field public static final SERVICE_TYPE_AREA_TRAFFIC_REPORTS:I = 0x15

.field public static final SERVICE_TYPE_BUSINESS_NEWS_INTERNATIONAL:I = 0xb

.field public static final SERVICE_TYPE_BUSINESS_NEWS_LOCAL:I = 0x8

.field public static final SERVICE_TYPE_BUSINESS_NEWS_NATIONAL:I = 0xa

.field public static final SERVICE_TYPE_BUSINESS_NEWS_REGIONAL:I = 0x9

.field public static final SERVICE_TYPE_EMERGENCY_BROADCASTS:I = 0x1

.field public static final SERVICE_TYPE_EMPLOYMENT_OPPORTUNITIES:I = 0x1c

.field public static final SERVICE_TYPE_ENTERTAINMENT_NEWS_INTERNATIONAL:I = 0x13

.field public static final SERVICE_TYPE_ENTERTAINMENT_NEWS_LOCAL:I = 0x10

.field public static final SERVICE_TYPE_ENTERTAINMENT_NEWS_NATIONAL:I = 0x12

.field public static final SERVICE_TYPE_ENTERTAINMENT_NEWS_REGIONAL:I = 0x11

.field public static final SERVICE_TYPE_GENERAL_NEWS_INTERNATIONAL:I = 0x7

.field public static final SERVICE_TYPE_GENERAL_NEWS_LOCAL:I = 0x4

.field public static final SERVICE_TYPE_GENERAL_NEWS_NATIONAL:I = 0x6

.field public static final SERVICE_TYPE_GENERAL_NEWS_REGIONAL:I = 0x5

.field public static final SERVICE_TYPE_LOCAL_AIRPORT_FLIGHT_SCHEDULES:I = 0x16

.field public static final SERVICE_TYPE_LOCAL_WEATHER:I = 0x14

.field public static final SERVICE_TYPE_LODGINGS:I = 0x18

.field public static final SERVICE_TYPE_MAINTENANCE:I = 0x3

.field public static final SERVICE_TYPE_MEDICAL_HEALTH_HOSPITALS:I = 0x1d

.field public static final SERVICE_TYPE_MULTI_CATEGORY:I = 0x1f

.field public static final SERVICE_TYPE_RESTAURANTS:I = 0x17

.field public static final SERVICE_TYPE_RETAIL_DIRECTORY:I = 0x19

.field public static final SERVICE_TYPE_SPORTS_NEWS_INTERNATIONAL:I = 0xf

.field public static final SERVICE_TYPE_SPORTS_NEWS_LOCAL:I = 0xc

.field public static final SERVICE_TYPE_SPORTS_NEWS_NATIONAL:I = 0xe

.field public static final SERVICE_TYPE_SPORTS_NEWS_REGIONAL:I = 0xd

.field public static final SERVICE_TYPE_STOCK_QUOTES:I = 0x1b

.field public static final SERVICE_TYPE_TECHNOLOGY_NEWS:I = 0x1e

.field public static final SERVICE_TYPE_UNKNOWN:I = 0x0

.field public static final SUBADDRESS_TYPE_NSAP:B = 0x0t

.field public static final SUBADDRESS_TYPE_USER_SPECIFIED:B = 0x1t

.field public static final SUBPARAMETER_ID_ALERT_ON_MESSAGE_DELIVERY:B = 0xct

.field public static final SUBPARAMETER_ID_CALL_BACK_NUMBER:B = 0xet

.field public static final SUBPARAMETER_ID_DEFERRED_DELIVERY_TIME_ABSOLUTE:B = 0x6t

.field public static final SUBPARAMETER_ID_DEFERRED_DELIVERY_TIME_RELATIVE:B = 0x7t

.field public static final SUBPARAMETER_ID_ENHANCED_VMN:B = 0x16t

.field public static final SUBPARAMETER_ID_ENHANCED_VMN_ACK:B = 0x17t

.field public static final SUBPARAMETER_ID_IP_ADDRESS:B = 0x55t

.field public static final SUBPARAMETER_ID_LANGUAGE_INDICATOR:B = 0xdt

.field public static final SUBPARAMETER_ID_MESSAGE_CENTER_TIME_STAMP:B = 0x3t

.field public static final SUBPARAMETER_ID_MESSAGE_DEPOSIT_INDEX:B = 0x11t

.field public static final SUBPARAMETER_ID_MESSAGE_DISPLAY_MODE:B = 0xft

.field public static final SUBPARAMETER_ID_MESSAGE_IDENTIFIER:B = 0x0t

.field public static final SUBPARAMETER_ID_MESSAGE_STATUS:B = 0x14t

.field public static final SUBPARAMETER_ID_MULTIPLE_ENCODING_USER_DATA:B = 0x10t

.field public static final SUBPARAMETER_ID_NUMBER_OF_MESSAGES:B = 0xbt

.field public static final SUBPARAMETER_ID_PRIORITY_INDICATOR:B = 0x8t

.field public static final SUBPARAMETER_ID_PRIVACY_INDICATOR:B = 0x9t

.field public static final SUBPARAMETER_ID_REASON_FOR_NOT_NOTIFIED:B = 0x56t

.field public static final SUBPARAMETER_ID_REPLY_OPTION:B = 0xat

.field public static final SUBPARAMETER_ID_SERVICE_CATEGORY_PROGRAM_DATA:B = 0x12t

.field public static final SUBPARAMETER_ID_SERVICE_CATEGORY_PROGRAM_RESULTS:B = 0x13t

.field public static final SUBPARAMETER_ID_TP_FAILURE_CAUSE:B = 0x15t

.field public static final SUBPARAMETER_ID_USER_DATA:B = 0x1t

.field public static final SUBPARAMETER_ID_USER_RESPONSE_CODE:B = 0x2t

.field public static final SUBPARAMETER_ID_VALIDITY_PERIOD_ABSOLUTE:B = 0x4t

.field public static final SUBPARAMETER_ID_VALIDITY_PERIOD_RELATIVE:B = 0x5t

.field public static final SUBPARAMETER_IDs:B = 0x18t

.field public static final TELESERVICE_CATEGORY_ANALOG_IS91_MESSAGING:I = 0x30000

.field public static final TELESERVICE_CATEGORY_ANALOG_IS91_PAGING:I = 0x10000

.field public static final TELESERVICE_CATEGORY_ANALOG_IS91_VOICE_MAIL:I = 0x20000

.field public static final TELESERVICE_CATEGORY_ANALOG_MESSAGING_WAIT:I = 0x40000

.field public static final TELESERVICE_CATEGORY_BROADCAST_MESSAGING:I = 0x50000

.field public static final TELESERVICE_CATEGORY_CARD_APPLICATION_TOOLKIT:I = 0x1007

.field public static final TELESERVICE_CATEGORY_CU_WAP:I = 0xfdea

.field public static final TELESERVICE_CATEGORY_GSM1X_MESSAGING:I = 0x1009

.field public static final TELESERVICE_CATEGORY_GSM1X_SIGNALLING:I = 0x1008

.field public static final TELESERVICE_CATEGORY_IS91_EXTENDED:I = 0x1000

.field public static final TELESERVICE_CATEGORY_SERVICE_CATEGORY_PROGRAMMING:I = 0x1006

.field public static final TELESERVICE_CATEGORY_VOICE_MAIL_NOTIFICATION:I = 0x1003

.field public static final TELESERVICE_CATEGORY_WIRELESS_APPLICATION:I = 0x1004

.field public static final TELESERVICE_CATEGORY_WIRELESS_ENHANCED_MESSAGING:I = 0x1005

.field public static final TELESERVICE_CATEGORY_WIRELESS_MESSAGING:I = 0x1002

.field public static final TELESERVICE_CATEGORY_WIRELESS_PAGING:I = 0x1001

.field public static final TELESERVICE_TYPE_CANCELLATION:B = 0x3t

.field public static final TELESERVICE_TYPE_DELIVER:B = 0x1t

.field public static final TELESERVICE_TYPE_DELIVERY_ACK:B = 0x4t

.field public static final TELESERVICE_TYPE_DELIVERY_REPORT:B = 0x7t

.field public static final TELESERVICE_TYPE_READ_ACK:B = 0x6t

.field public static final TELESERVICE_TYPE_RESERVED:B = 0x0t

.field public static final TELESERVICE_TYPE_SUBMIT:B = 0x2t

.field public static final TELESERVICE_TYPE_SUBMIT_REPORT:B = 0x8t

.field public static final TELESERVICE_TYPE_USER_ACK:B = 0x5t

.field public static final TRANSPORT_TYPE_ACKNOWLEDGE:B = 0x2t

.field public static final TRANSPORT_TYPE_BROADCAST:B = 0x1t

.field public static final TRANSPORT_TYPE_POINT_TO_POINT:B = 0x0t

.field public static final TRANSPORT_TYPEs:B = 0x3t

.field public static final fixedLengthSubparameter:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue;->fixedLengthSubparameter:[B

    return-void

    :array_0
    .array-data 0x1
        0x3t
        0x0t
        0x1t
        0x6t
        0x6t
        0x1t
        0x6t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
