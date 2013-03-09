.class public Lcom/htc/omadm/libdo/system/PhoneInfo;
.super Ljava/lang/Object;
.source "PhoneInfo.java"


# static fields
.field protected static final CMD_NOK:Ljava/lang/String; = "FALSE"

.field protected static final CMD_OK:Ljava/lang/String; = "TRUE"

.field public static final CtlName:Ljava/lang/String; = "Phone"

.field private static DeviceID:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneInfo"

.field private static NetworkType:Ljava/lang/String; = null

.field private static final PHONEINFO_IS3G:Ljava/lang/String; = "IS3G"

.field private static final PHONEINFO_STATE_2G:I = 0x2

.field private static final PHONEINFO_STATE_3G:I = 0x3

.field private static final PhoneIs2G:Ljava/lang/String; = "2G"

.field private static final PhoneIs3G:Ljava/lang/String; = "3G"

.field private static PhoneLine1Number:Ljava/lang/String; = null

.field private static final SIMChange:Ljava/lang/String; = "true"

.field private static final SOFTWARE_VERSION:Ljava/lang/String; = "SWInfo"

.field private static imsi:Ljava/lang/String;

.field private static mPhone_BatteryLevel:I

.field private static mPhone_Network_Status:I

.field private static mPhone_SignalStrength:I

.field private static mPhone_Type:I

.field private static mPhone_isNetworkRoaming:Z

.field private static mSim_State:I

.field private static me:Lcom/htc/omadm/libdo/system/PhoneInfo;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x64

    const/4 v0, 0x0

    .line 47
    sput v0, Lcom/htc/omadm/libdo/system/PhoneInfo;->mPhone_Network_Status:I

    .line 48
    sput-boolean v0, Lcom/htc/omadm/libdo/system/PhoneInfo;->mPhone_isNetworkRoaming:Z

    .line 49
    sput v1, Lcom/htc/omadm/libdo/system/PhoneInfo;->mPhone_SignalStrength:I

    .line 50
    sput v1, Lcom/htc/omadm/libdo/system/PhoneInfo;->mPhone_BatteryLevel:I

    .line 51
    sput v0, Lcom/htc/omadm/libdo/system/PhoneInfo;->mPhone_Type:I

    .line 52
    sput v0, Lcom/htc/omadm/libdo/system/PhoneInfo;->mSim_State:I

    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/omadm/libdo/system/PhoneInfo;->me:Lcom/htc/omadm/libdo/system/PhoneInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "mContext"

    .prologue
    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/htc/omadm/libdo/system/PhoneInfo;->mContext:Landroid/content/Context;

    .line 65
    const/4 v0, 0x3

    sput v0, Lcom/htc/omadm/libdo/system/PhoneInfo;->mPhone_Network_Status:I

    .line 66
    return-void
.end method

.method private GetPhoneInfo()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 80
    :try_start_0
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/PhoneInfo;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 81
    .local v2, mTelephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_f

    .line 82
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 83
    .local v1, mNetworkType:I
    if-eq v1, v5, :cond_0

    if-ne v1, v7, :cond_1

    .line 84
    :cond_0
    const/4 v3, 0x2

    sput v3, Lcom/htc/omadm/libdo/system/PhoneInfo;->mPhone_Network_Status:I

    .line 86
    const-string v3, "PhoneInfo"

    const-string v4, "Phone is 2G"

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_1
    if-ne v1, v6, :cond_2

    .line 89
    const/4 v3, 0x3

    sput v3, Lcom/htc/omadm/libdo/system/PhoneInfo;->mPhone_Network_Status:I

    .line 91
    const-string v3, "PhoneInfo"

    const-string v4, "Phone is 3G"

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_2
    if-nez v1, :cond_3

    .line 95
    const-string v3, "UNKNOWN"

    sput-object v3, Lcom/htc/omadm/libdo/system/PhoneInfo;->NetworkType:Ljava/lang/String;

    .line 96
    :cond_3
    if-ne v1, v7, :cond_4

    .line 97
    const-string v3, "GPRS"

    sput-object v3, Lcom/htc/omadm/libdo/system/PhoneInfo;->NetworkType:Ljava/lang/String;

    .line 98
    :cond_4
    if-ne v1, v5, :cond_5

    .line 99
    const-string v3, "EDGE"

    sput-object v3, Lcom/htc/omadm/libdo/system/PhoneInfo;->NetworkType:Ljava/lang/String;

    .line 100
    :cond_5
    if-ne v1, v6, :cond_6

    .line 101
    const-string v3, "UMTS"

    sput-object v3, Lcom/htc/omadm/libdo/system/PhoneInfo;->NetworkType:Ljava/lang/String;

    .line 102
    :cond_6
    const/16 v3, 0x8

    if-ne v1, v3, :cond_7

    .line 103
    const-string v3, "HSDPA"

    sput-object v3, Lcom/htc/omadm/libdo/system/PhoneInfo;->NetworkType:Ljava/lang/String;

    .line 104
    :cond_7
    const/16 v3, 0x9

    if-ne v1, v3, :cond_8

    .line 105
    const-string v3, "HSUPA"

    sput-object v3, Lcom/htc/omadm/libdo/system/PhoneInfo;->NetworkType:Ljava/lang/String;

    .line 106
    :cond_8
    const/16 v3, 0xa

    if-ne v1, v3, :cond_9

    .line 107
    const-string v3, "HSPA"

    sput-object v3, Lcom/htc/omadm/libdo/system/PhoneInfo;->NetworkType:Ljava/lang/String;

    .line 108
    :cond_9
    const/4 v3, 0x4

    if-ne v1, v3, :cond_a

    .line 109
    const-string v3, "CDMA"

    sput-object v3, Lcom/htc/omadm/libdo/system/PhoneInfo;->NetworkType:Ljava/lang/String;

    .line 110
    :cond_a
    const/4 v3, 0x5

    if-ne v1, v3, :cond_b

    .line 111
    const-string v3, "EVDO_0"

    sput-object v3, Lcom/htc/omadm/libdo/system/PhoneInfo;->NetworkType:Ljava/lang/String;

    .line 112
    :cond_b
    const/4 v3, 0x6

    if-ne v1, v3, :cond_c

    .line 113
    const-string v3, "EVDO_A"

    sput-object v3, Lcom/htc/omadm/libdo/system/PhoneInfo;->NetworkType:Ljava/lang/String;

    .line 114
    :cond_c
    const/4 v3, 0x7

    if-ne v1, v3, :cond_d

    .line 115
    const-string v3, "1xRTT"

    sput-object v3, Lcom/htc/omadm/libdo/system/PhoneInfo;->NetworkType:Ljava/lang/String;

    .line 117
    :cond_d
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_10

    .line 118
    const-string v3, "NONE"

    sput-object v3, Lcom/htc/omadm/libdo/system/PhoneInfo;->DeviceID:Ljava/lang/String;

    .line 122
    :goto_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_11

    .line 123
    const-string v3, "NONE"

    sput-object v3, Lcom/htc/omadm/libdo/system/PhoneInfo;->PhoneLine1Number:Ljava/lang/String;

    .line 128
    :goto_1
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/htc/omadm/libdo/system/PhoneInfo;->imsi:Ljava/lang/String;

    if-nez v3, :cond_e

    .line 129
    const-string v3, "000000000000000"

    sput-object v3, Lcom/htc/omadm/libdo/system/PhoneInfo;->imsi:Ljava/lang/String;

    .line 132
    :cond_e
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    sput v3, Lcom/htc/omadm/libdo/system/PhoneInfo;->mPhone_Type:I

    .line 133
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    sput v3, Lcom/htc/omadm/libdo/system/PhoneInfo;->mSim_State:I

    .line 145
    .end local v1           #mNetworkType:I
    .end local v2           #mTelephonyManager:Landroid/telephony/TelephonyManager;
    :cond_f
    :goto_2
    return-void

    .line 120
    .restart local v1       #mNetworkType:I
    .restart local v2       #mTelephonyManager:Landroid/telephony/TelephonyManager;
    :cond_10
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/htc/omadm/libdo/system/PhoneInfo;->DeviceID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    .end local v1           #mNetworkType:I
    .end local v2           #mTelephonyManager:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 125
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #mNetworkType:I
    .restart local v2       #mTelephonyManager:Landroid/telephony/TelephonyManager;
    :cond_11
    :try_start_1
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/htc/omadm/libdo/system/PhoneInfo;->PhoneLine1Number:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static Init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 68
    new-instance v0, Lcom/htc/omadm/libdo/system/PhoneInfo;

    invoke-direct {v0, p0}, Lcom/htc/omadm/libdo/system/PhoneInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/omadm/libdo/system/PhoneInfo;->me:Lcom/htc/omadm/libdo/system/PhoneInfo;

    .line 69
    return-void
.end method

.method public static Product_ID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    const-string v0, "ro.product.device"

    const-string v1, "FALSE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSingleton()Lcom/htc/omadm/libdo/system/PhoneInfo;
    .locals 2

    .prologue
    .line 71
    sget-object v0, Lcom/htc/omadm/libdo/system/PhoneInfo;->me:Lcom/htc/omadm/libdo/system/PhoneInfo;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/htc/omadm/libdo/system/PhoneInfo;

    invoke-static {}, Lcom/htc/omadm/rule/Factory;->GetContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/omadm/libdo/system/PhoneInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/omadm/libdo/system/PhoneInfo;->me:Lcom/htc/omadm/libdo/system/PhoneInfo;

    .line 74
    :cond_0
    sget-object v0, Lcom/htc/omadm/libdo/system/PhoneInfo;->me:Lcom/htc/omadm/libdo/system/PhoneInfo;

    return-object v0
.end method


# virtual methods
.method public BatteryLevel()I
    .locals 1

    .prologue
    .line 191
    sget v0, Lcom/htc/omadm/libdo/system/PhoneInfo;->mPhone_BatteryLevel:I

    return v0
.end method

.method public BuildNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 242
    const-string v0, "ro.build.description"

    const-string v1, "FALSE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ChangeList()Ljava/lang/String;
    .locals 2

    .prologue
    .line 237
    const-string v0, "ro.build.changelist"

    const-string v1, "FALSE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Device_ID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/htc/omadm/libdo/system/PhoneInfo;->GetPhoneInfo()V

    .line 159
    sget-object v0, Lcom/htc/omadm/libdo/system/PhoneInfo;->DeviceID:Ljava/lang/String;

    return-object v0
.end method

.method public Firmware_Version()Ljava/lang/String;
    .locals 2

    .prologue
    .line 247
    const-string v0, "ro.baseband"

    const-string v1, "FALSE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Hardware_Version()Ljava/lang/String;
    .locals 2

    .prologue
    .line 215
    const-string v0, "ro.revision"

    const-string v1, "FALSE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public IMEI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 148
    const-string v1, "ril.imei"

    const-string v2, "FALSE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, imei:Ljava/lang/String;
    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public IMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/htc/omadm/libdo/system/PhoneInfo;->GetPhoneInfo()V

    .line 154
    sget-object v0, Lcom/htc/omadm/libdo/system/PhoneInfo;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public IsHFACondition()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 262
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/PhoneInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_1

    .line 263
    const-string v2, "PhoneInfo"

    const-string v3, "AIRplane mode"

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_0
    :goto_0
    return v1

    .line 266
    :cond_1
    sget v3, Lcom/htc/omadm/libdo/system/PhoneInfo;->mPhone_Type:I

    if-ne v3, v2, :cond_2

    .line 267
    const-string v2, "PhoneInfo"

    const-string v3, "NO HFA in GSM mode"

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 270
    :cond_2
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/PhoneInfo;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/omadm/libdo/system/Lawmo;->getSingleton(Landroid/content/Context;)Lcom/htc/omadm/libdo/system/Lawmo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/omadm/libdo/system/Lawmo;->GetState()I

    move-result v3

    if-eqz v3, :cond_3

    .line 271
    const-string v2, "PhoneInfo"

    const-string v3, "NO HFA in lock mode"

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 274
    :cond_3
    const-string v3, "dm.hfa"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, triggerHFA:Ljava/lang/String;
    const-string v3, "PhoneInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkHFACondiction -> dm.hfa = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 277
    sput-boolean v1, Lcom/htc/omadm/prop/PropertyState;->DM_NI_MODE:Z

    move v1, v2

    .line 279
    goto :goto_0
.end method

.method public Model_ID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 220
    const-string v1, "ro.product.model"

    const-string v2, "FALSE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/omadm/libdo/system/PhoneInfo;->filterIllegalString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, ModelID:Ljava/lang/String;
    return-object v0
.end method

.method public PhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/htc/omadm/libdo/system/PhoneInfo;->GetPhoneInfo()V

    .line 164
    sget-object v0, Lcom/htc/omadm/libdo/system/PhoneInfo;->PhoneLine1Number:Ljava/lang/String;

    return-object v0
.end method

.method public PhoneSystem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/htc/omadm/libdo/system/PhoneInfo;->GetPhoneInfo()V

    .line 169
    sget-object v0, Lcom/htc/omadm/libdo/system/PhoneInfo;->NetworkType:Ljava/lang/String;

    return-object v0
.end method

.method public PhoneType()I
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/htc/omadm/libdo/system/PhoneInfo;->GetPhoneInfo()V

    .line 174
    sget v0, Lcom/htc/omadm/libdo/system/PhoneInfo;->mPhone_Type:I

    return v0
.end method

.method public Product_Version()Ljava/lang/String;
    .locals 2

    .prologue
    .line 257
    const-string v0, "ro.product.version"

    const-string v1, "FALSE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public SIM_OP_NUMERIC()Ljava/lang/String;
    .locals 3

    .prologue
    .line 195
    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, "FALSE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, Numeric:Ljava/lang/String;
    return-object v0
.end method

.method public SignalStrength()I
    .locals 1

    .prologue
    .line 187
    sget v0, Lcom/htc/omadm/libdo/system/PhoneInfo;->mPhone_SignalStrength:I

    return v0
.end method

.method public SimState()I
    .locals 1

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/htc/omadm/libdo/system/PhoneInfo;->GetPhoneInfo()V

    .line 179
    sget v0, Lcom/htc/omadm/libdo/system/PhoneInfo;->mSim_State:I

    return v0
.end method

.method public Software_Version()Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    const-string v0, "ro.build.description"

    const-string v1, "FALSE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Software_Version(ZLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "access"
    .parameter "Value"

    .prologue
    .line 200
    if-nez p2, :cond_0

    .line 201
    const/4 v0, 0x0

    .line 205
    :goto_0
    return-object v0

    .line 202
    :cond_0
    if-nez p1, :cond_1

    .line 203
    const-string v0, "ro.build.description"

    const-string v1, "FALSE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 205
    :cond_1
    const-string v0, "FALSE"

    goto :goto_0
.end method

.method filterIllegalString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "model"

    .prologue
    .line 225
    move-object v0, p1

    .line 226
    .local v0, inputStr:Ljava/lang/String;
    const-string v4, "[^a-zA-Z0-9 -]*"

    .line 227
    .local v4, patternStr:Ljava/lang/String;
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 228
    .local v3, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 229
    .local v1, matcher:Ljava/util/regex/Matcher;
    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, outStr:Ljava/lang/String;
    const-string v5, "PhoneInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Model name:\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-object v2
.end method

.method public isNetworkRoaming()Z
    .locals 1

    .prologue
    .line 183
    sget-boolean v0, Lcom/htc/omadm/libdo/system/PhoneInfo;->mPhone_isNetworkRoaming:Z

    return v0
.end method
