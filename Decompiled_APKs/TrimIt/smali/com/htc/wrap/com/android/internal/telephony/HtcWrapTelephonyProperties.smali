.class public Lcom/htc/wrap/com/android/internal/telephony/HtcWrapTelephonyProperties;
.super Ljava/lang/Object;
.source "HtcWrapTelephonyProperties.java"


# static fields
.field public static final CURRENT_ACTIVE_PHONE:Ljava/lang/String; = "gsm.current.phone-type"

.field public static final PROPERTY_BASEBAND_VERSION:Ljava/lang/String; = "gsm.version.baseband"

.field public static final PROPERTY_CALL_RING_DELAY:Ljava/lang/String; = "ro.telephony.call_ring.delay"

.field public static PROPERTY_CB_CHANNEL:Ljava/lang/String; = null

.field public static PROPERTY_CB_LP:Ljava/lang/String; = null

.field public static PROPERTY_CB_MAX_CHANNEL:Ljava/lang/String; = null

.field public static final PROPERTY_CDMA_MSG_ID:Ljava/lang/String; = "persist.radio.cdma.msgid"

.field public static PROPERTY_DATA_NETWORK_TYPE:Ljava/lang/String; = null

.field public static final PROPERTY_DISABLE_CALL:Ljava/lang/String; = "ro.telephony.disable-call"

.field public static final PROPERTY_ECM_EXIT_TIMER:Ljava/lang/String; = "ro.cdma.ecmexittimer"

.field public static PROPERTY_GSM_DATA_NETWORK_TYPE:Ljava/lang/String; = null

.field public static final PROPERTY_ICC_APN_OPERATOR_NUMERIC:Ljava/lang/String; = "gsm.apn.operator.numeric"

.field public static PROPERTY_ICC_OPERATOR_ALPHA:Ljava/lang/String; = null

.field public static PROPERTY_ICC_OPERATOR_ISO_COUNTRY:Ljava/lang/String; = null

.field public static PROPERTY_ICC_OPERATOR_NUMERIC:Ljava/lang/String; = null

.field public static final PROPERTY_IDP_STRING:Ljava/lang/String; = "ro.cdma.idpstring"

.field public static final PROPERTY_INECM_MODE:Ljava/lang/String; = "ril.cdma.inecmmode"

.field public static PROPERTY_LOCKSCREEN_MODE_STATUS:Ljava/lang/String; = null

.field public static final PROPERTY_MAX_ADN_ALPHA_TAG_LENGTH:Ljava/lang/String; = "gsm.usim.alpha-tag.length"

.field public static final PROPERTY_MAX_ADN_NUMBER_LENGTH:Ljava/lang/String; = "gsm.usim.number.length"

.field public static final PROPERTY_OPERATOR_ALPHA:Ljava/lang/String; = "gsm.operator.alpha"

.field public static final PROPERTY_OPERATOR_ISMANUAL:Ljava/lang/String; = "operator.ismanual"

.field public static final PROPERTY_OPERATOR_ISO_COUNTRY:Ljava/lang/String; = "gsm.operator.iso-country"

.field public static final PROPERTY_OPERATOR_ISROAMING:Ljava/lang/String; = "gsm.operator.isroaming"

.field public static final PROPERTY_OPERATOR_NUMERIC:Ljava/lang/String; = "gsm.operator.numeric"

.field public static final PROPERTY_OTASP_NUM_SCHEMA:Ljava/lang/String; = "ro.cdma.otaspnumschema"

.field public static final PROPERTY_RESET_ON_RADIO_TECH_CHANGE:Ljava/lang/String; = "persist.radio.reset_on_switch"

.field public static final PROPERTY_RIL_IMPL:Ljava/lang/String; = "gsm.version.ril-impl"

.field public static final PROPERTY_RIL_SENDS_MULTIPLE_CALL_RING:Ljava/lang/String; = "ro.telephony.call_ring.multiple"

.field public static final PROPERTY_SIM_ADN_RECORDS_CAPACITY:Ljava/lang/String; = "gsm.adn.records.capacity"

.field public static PROPERTY_SIM_CHANGE:Ljava/lang/String; = null

.field static PROPERTY_SIM_NUMERIC_TYPES:Ljava/lang/String; = null

.field public static PROPERTY_SIM_STATE:Ljava/lang/String; = null

.field public static PROPERTY_SIM_TYPES:Ljava/lang/String; = null

.field public static PROPERTY_SUPER_POWER_SAVING:Ljava/lang/String; = null

.field public static PROPERTY_UIM_ID:Ljava/lang/String; = null

.field public static final PROPERTY_USIM_MAX_ANR_ENTRIES_PER_PBK:Ljava/lang/String; = "gsm.usim.anr.max-no"

.field public static final PROPERTY_USIM_MAX_EMAIL_ENTRIES_LENGTH:Ljava/lang/String; = "gsm.usim.email.length"

.field public static final PROPERTY_USIM_MAX_EMAIL_ENTRIES_PER_PBK:Ljava/lang/String; = "gsm.usim.email.max-no"

.field public static final PROPERTY_VZW_MO_SMS_FORMAT:Ljava/lang/String; = "gsm.vzw.sms.format"

.field public static final PROPERTY_VZW_MO_SMS_FORMAT_3GPP:Ljava/lang/String; = "3gpp"

.field public static final PROPERTY_VZW_MO_SMS_FORMAT_3GPP2:Ljava/lang/String; = "3gpp2"

.field public static final PROPERTY_VZW_SMS_WRITE_UICC:Ljava/lang/String; = "gsm.vzw.sms.writeuicc"

.field public static final PROPERTY_WAKE_LOCK_TIMEOUT:Ljava/lang/String; = "ro.ril.wake_lock_timeout"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "gsm.sim.numeric.types"

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapTelephonyProperties;->PROPERTY_SIM_NUMERIC_TYPES:Ljava/lang/String;

    .line 65
    const-string v0, "gsm.sim.state"

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapTelephonyProperties;->PROPERTY_SIM_STATE:Ljava/lang/String;

    .line 68
    const-string v0, "gsm.sim.change"

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapTelephonyProperties;->PROPERTY_SIM_CHANGE:Ljava/lang/String;

    .line 69
    const-string v0, "gsm.cb.max.channel"

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapTelephonyProperties;->PROPERTY_CB_MAX_CHANNEL:Ljava/lang/String;

    .line 70
    const-string v0, "gsm.cb.lp"

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapTelephonyProperties;->PROPERTY_CB_LP:Ljava/lang/String;

    .line 77
    const-string v0, "gsm.sim.operator.numeric"

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapTelephonyProperties;->PROPERTY_ICC_OPERATOR_NUMERIC:Ljava/lang/String;

    .line 82
    const-string v0, "gsm.sim.operator.alpha"

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapTelephonyProperties;->PROPERTY_ICC_OPERATOR_ALPHA:Ljava/lang/String;

    .line 85
    const-string v0, "gsm.sim.operator.iso-country"

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapTelephonyProperties;->PROPERTY_ICC_OPERATOR_ISO_COUNTRY:Ljava/lang/String;

    .line 91
    const-string v0, "gsm.network.type"

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapTelephonyProperties;->PROPERTY_DATA_NETWORK_TYPE:Ljava/lang/String;

    .line 99
    const-string v0, "gsm.data.network.type"

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapTelephonyProperties;->PROPERTY_GSM_DATA_NETWORK_TYPE:Ljava/lang/String;

    .line 106
    const-string v0, "gsm.sim.cbmi.channel"

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapTelephonyProperties;->PROPERTY_CB_CHANNEL:Ljava/lang/String;

    .line 120
    const-string v0, "gsm.sim.types"

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapTelephonyProperties;->PROPERTY_SIM_TYPES:Ljava/lang/String;

    .line 126
    const-string v0, "gsm.pdp.power.saving"

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapTelephonyProperties;->PROPERTY_SUPER_POWER_SAVING:Ljava/lang/String;

    .line 245
    const-string v0, "gsm.lockscreen.mode.status"

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapTelephonyProperties;->PROPERTY_LOCKSCREEN_MODE_STATUS:Ljava/lang/String;

    .line 248
    const-string v0, "gsm.cdma.uim.id"

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapTelephonyProperties;->PROPERTY_UIM_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
