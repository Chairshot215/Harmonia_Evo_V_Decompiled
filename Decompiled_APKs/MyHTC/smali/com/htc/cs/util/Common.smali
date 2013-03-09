.class public Lcom/htc/cs/util/Common;
.super Ljava/lang/Object;
.source "Common.java"


# static fields
.field public static final ACTIVITY_CREATED:S = 0x21s

.field public static final ACTIVITY_DESTROYED:S = 0x26s

.field public static final ACTIVITY_IDLE:S = 0x20s

.field public static final ACTIVITY_PAUSED:S = 0x24s

.field public static final ACTIVITY_RESUMED:S = 0x23s

.field public static final ACT_BEGIN_FULL_MERGE_ALARM:Ljava/lang/String; = "com.htc.cs.begin_full_merge_alarm"

.field public static final ACT_CHANGE_SYNC_FREQUENCY:Ljava/lang/String; = "Change Sync Frequency"

.field public static final ACT_FOTA_COMPLETED:Ljava/lang/String; = "com.htc.cs.FOTA_INSTALL_COMPLETE"

.field public static final ACT_FOTA_REMOVE_UNUSED:Ljava/lang/String; = "com.htc.cs.FOTA_REMOVE_UNUSED_DATA"

.field public static final ACT_FULL_MERGE_TIMEOUT:Ljava/lang/String; = "com.htc.cs.full_merge_timeout"

.field public static final ACT_MISS_IMC_RESPONSE:Ljava/lang/String; = "com.htc.cs.miss_imc_response"

.field public static final ACT_SETTING_FREQUENCY_CHANGE:Ljava/lang/String; = "com.htc.cs.frequency_change"

.field public static final ACT_SMS_CONFIRM_ACCOUNT:Ljava/lang/String; = "com.htc.cs.connectedservice.SMSConfirmAccount"

.field public static final ACT_SMS_CONFIRM_ACCOUNT_CANCEL:Ljava/lang/String; = "com.htc.cs.connectedservice.SMSConfirmAccount.Cancel"

.field public static final ACT_SMS_CONFIRM_ACCOUNT_FROM_SERVER:Ljava/lang/String; = "com.htc.cs.SMSComfirmAccountFromServer"

.field public static final ACT_SMS_CONFIRM_ACCOUNT_OK:Ljava/lang/String; = "com.htc.cs.connectedservice.SMSConfirmAccount.OK"

.field public static final ACT_WAP_PUSH_RECEIVED:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_RECEIVED"

.field public static final CSTAG:Ljava/lang/String; = "MyHTC"

.field public static final CS_ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.cs"

.field public static final CS_PACKAGE_NAME:Ljava/lang/String; = "com.htc.cs"

.field public static final CS_PREFERENCE_KEYNAME_FREQUENCY:Ljava/lang/String; = "syncFrequency"

.field public static final DASHBOARD_ADAPTER_DEBUG:Z = false

.field public static final DASHBOARD_FORWARDING_DEBUG:Z = false

.field public static final DASHBOARD_LOCATION_DEBUG:Z = false

.field public static final DASHBOARD_LOCK_DEBUG:Z = false

.field public static final DASHBOARD_MISSEDCALL_DEBUG:Z = false

.field public static final DASHBOARD_RING_DEBUG:Z = false

.field public static final DASHBOARD_SERVICE_DEBUG:Z = false

.field public static final DASHBOARD_TAG:Ljava/lang/String; = "Dashboard"

.field public static final DASHBOARD_WIPE_DEBUG:Z = false

.field public static final DATA_TYPE_WAP_PUSH_IMEI:Ljava/lang/String; = "application/vnd.csclient"

.field public static final DEBUG:Z = false

.field public static EXTEND_HEARTBEAT:I = 0x0

.field public static final EXTRA_SIM_CHANGE_TYPE:Ljava/lang/String; = "SIM_CHANGE_TYPE"

.field public static final FMItemOffset:I = 0xf4240

.field public static final FMTimeOut:I = 0x112a880

.field public static final HSYNCITEM_SIZE:I = 0x1388

.field public static final HSYNC_PUSH_CNT_MAX:I = 0x64

.field public static final KEY_FULLMERGE_STATE:Ljava/lang/String; = "com.htc.cs.FM_state"

.field public static final SIM_CHANGE_TYPE_CHANGE:I = 0x1

.field public static final SIM_CHANGE_TYPE_REMOVE:I = 0x0

.field public static final major:Ljava/lang/String; = "1"

.field public static final minor:Ljava/lang/String; = "0"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    sput v0, Lcom/htc/cs/util/Common;->EXTEND_HEARTBEAT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
