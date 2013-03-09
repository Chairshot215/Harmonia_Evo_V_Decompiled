.class public final Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcAboutPhoneNetwork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$MyHandler;
    }
.end annotation


# static fields
.field private static final ERR_NV_CMD_FAILED:Ljava/lang/String; = "0400"

.field private static final ERR_NV_INTERNAL_DMSS_USE:Ljava/lang/String; = "0100"

.field private static final ERR_NV_LENGTH:I = 0x4

.field private static final ERR_NV_MEMORY_FULL:Ljava/lang/String; = "0300"

.field private static final ERR_NV_NOT_EXIST_OR_BAD_PARAMS:Ljava/lang/String; = "0600"

.field private static final ERR_NV_NOT_RECOGN_CMD:Ljava/lang/String; = "0200"

.field private static final ERR_NV_NOT_SUPPORT:Ljava/lang/String; = "0500"

.field private static final ERR_NV_READ_ONLY:Ljava/lang/String; = "0700"

.field private static final EVENT_GET_CDMA_PROFILE1_NAI:I = 0x384

.field private static final LOG_TAG:Ljava/lang/String; = "HtcAboutPhoneStatus"

.field private static final NV_SUCCESS:Ljava/lang/String; = "0000"

.field private static PreferenceOfCdmaNAI:Lcom/htc/preference/HtcPreference; = null

.field public static final STATE_SEND_ALREADY_AND_FAILED:I = 0x1

.field public static final STATE_SEND_ALREADY_AND_NOT_SUPPORT:I = 0x2

.field public static final STATE_SEND_ALREADY_AND_SUCCESS:I

.field private static mDuplicateFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

.field private static mDuplicateRootPref:Lcom/htc/preference/HtcPreferenceScreen;


# instance fields
.field private final PRO1_NAI_CMD:Ljava/lang/String;

.field key:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mNetworkTypePreference:Lcom/htc/preference/HtcPreference;

.field private mOperatorNamePreference:Lcom/htc/preference/HtcPreference;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mServiceStatePreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;

.field private mSignalStrengthPreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->PreferenceOfCdmaNAI:Lcom/htc/preference/HtcPreference;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 310
    const-string v0, "C826D10101"

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->PRO1_NAI_CMD:Ljava/lang/String;

    .line 311
    new-instance v0, Ljava/lang/String;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->key:Ljava/lang/String;

    .line 372
    new-instance v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$1;-><init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-static {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->validateStateOfNv(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/htc/preference/HtcPreference;)Lcom/htc/preference/HtcPreference;
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    sput-object p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->PreferenceOfCdmaNAI:Lcom/htc/preference/HtcPreference;

    return-object p0
.end method

.method static synthetic access$200()Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mDuplicateFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    return-object v0
.end method

.method static synthetic access$300()Lcom/htc/preference/HtcPreferenceScreen;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mDuplicateRootPref:Lcom/htc/preference/HtcPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mNetworkTypePreference:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mOperatorNamePreference:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method private doPlugin()V
    .locals 5

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v1

    .line 104
    .local v1, preferenceManager:Lcom/htc/preference/HtcPreferenceManager;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    .line 105
    .local v2, root:Lcom/htc/preference/HtcPreferenceScreen;
    const v3, 0x7f0c049e

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 106
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 111
    invoke-static {p0, v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;->pluginOperatorName(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mOperatorNamePreference:Lcom/htc/preference/HtcPreference;

    .line 114
    invoke-static {p0, v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;->pluginSignalStrength(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mSignalStrengthPreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;

    .line 118
    invoke-static {p0, v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;->pluginNetworkType(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mNetworkTypePreference:Lcom/htc/preference/HtcPreference;

    .line 121
    invoke-static {p0, v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;->pluginServiceState(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mServiceStatePreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;

    .line 125
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcProjectFlags;->isA0003:Z

    if-nez v3, :cond_0

    .line 126
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreference;-><init>(Landroid/content/Context;)V

    .line 127
    .local v0, preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 128
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 133
    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->telephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 149
    :goto_0
    sget-boolean v3, Lcom/android/settings/HtcFeatureList;->FEATURE_LIFE_CALL_TIMER_DATA_USAGE:Z

    if-eqz v3, :cond_1

    .line 150
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeCallsPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeCallsPreference;-><init>(Landroid/content/Context;)V

    .line 151
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 152
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 154
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeTimerPreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeTimerPreference;-><init>(Landroid/content/Context;)V

    .line 155
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 156
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 158
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeDataRxPreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeDataRxPreference;-><init>(Landroid/content/Context;)V

    .line 159
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 160
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 162
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeDataTxPreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeDataTxPreference;-><init>(Landroid/content/Context;)V

    .line 163
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 164
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 168
    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    :cond_1
    return-void

    .line 136
    :cond_2
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->telephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 139
    new-instance v3, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$MyHandler;

    invoke-direct {v3, p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$MyHandler;-><init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;)V

    iput-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mHandler:Landroid/os/Handler;

    .line 140
    sput-object v2, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mDuplicateRootPref:Lcom/htc/preference/HtcPreferenceScreen;

    .line 141
    sput-object p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mDuplicateFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    goto :goto_0

    .line 143
    :cond_3
    const-string v3, "HtcAboutPhoneStatus"

    const-string v4, "OoO Unknown Phone Type"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static doStringToASCII(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "str"

    .prologue
    .line 290
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 291
    .local v3, len:I
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x2

    .line 292
    .local v2, j:I
    const-string v4, ""

    .line 294
    .local v4, result:Ljava/lang/String;
    :goto_0
    if-gt v2, v3, :cond_0

    .line 295
    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 296
    .local v5, tmp:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    int-to-char v7, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 297
    move v1, v2

    .line 298
    add-int/lit8 v2, v2, 0x2

    .line 299
    goto :goto_0

    .line 300
    .end local v5           #tmp:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 301
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 303
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    return-object v4
.end method

.method private static validateStateOfNv(Ljava/lang/String;)I
    .locals 6
    .parameter "command"

    .prologue
    .line 246
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, errState:Ljava/lang/String;
    const-string v0, ""

    .line 248
    .local v0, errMsg:Ljava/lang/String;
    const/4 v2, -0x1

    .line 249
    .local v2, state:I
    const-string v3, "0000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 250
    const/4 v2, 0x0

    .line 251
    const-string v0, ""

    .line 277
    :goto_0
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 278
    const-string v3, "TEST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "command state is error, reason is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    return v2

    .line 252
    :cond_1
    const-string v3, "0100"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 253
    const/4 v2, 0x1

    .line 254
    const-string v0, "internal dmss used"

    goto :goto_0

    .line 255
    :cond_2
    const-string v3, "0200"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 256
    const/4 v2, 0x1

    .line 257
    const-string v0, "can\'t recognize command"

    goto :goto_0

    .line 258
    :cond_3
    const-string v3, "0300"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 259
    const/4 v2, 0x1

    .line 260
    const-string v0, "memory is full"

    goto :goto_0

    .line 261
    :cond_4
    const-string v3, "0400"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 262
    const/4 v2, 0x1

    .line 263
    const-string v0, "command is fail"

    goto :goto_0

    .line 264
    :cond_5
    const-string v3, "0500"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 265
    const/4 v2, 0x2

    .line 266
    const-string v0, "not support this command"

    goto :goto_0

    .line 267
    :cond_6
    const-string v3, "0600"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 268
    const/4 v2, 0x2

    .line 269
    const-string v0, "bad command parameters or not exists"

    goto :goto_0

    .line 270
    :cond_7
    const-string v3, "0700"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 271
    const/4 v2, 0x1

    .line 272
    const-string v0, "memeory is read only"

    goto :goto_0

    .line 274
    :cond_8
    const/4 v2, 0x1

    .line 275
    const-string v0, "command error with non-knowing reason"

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 89
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->doPlugin()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->requestHandlers()V

    .line 94
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 205
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    .line 206
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mSignalStrengthPreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mSignalStrengthPreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->unregisterIntent()V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mServiceStatePreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->unregisterIntent()V

    .line 211
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 216
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 173
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 175
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mSignalStrengthPreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mSignalStrengthPreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->registerIntent()V

    .line 177
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mSignalStrengthPreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->updateSignalStrength()V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mServiceStatePreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->registerIntent()V

    .line 184
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->PreferenceOfCdmaNAI:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_1

    .line 185
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mDuplicateRootPref:Lcom/htc/preference/HtcPreferenceScreen;

    sget-object v1, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->PreferenceOfCdmaNAI:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 187
    :cond_1
    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_CDMA_NAI:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    .line 195
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 200
    :cond_3
    return-void
.end method
