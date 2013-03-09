.class public Lcom/android/internal/telephony/cdma/HtcCdmaAccount;
.super Landroid/os/Handler;
.source "HtcCdmaAccount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;
    }
.end annotation


# static fields
.field private static final ARG2_ACCESS_FROM_ICC:I = 0xa

.field private static final ARG2_ACCESS_FROM_ICC_PROXY:I = 0x14

.field private static final ARG2_ACCESS_FROM_NV:I = 0x0

.field private static final DBG:Z = true

.field private static final DBG_DETAIL:Z = true

.field private static final EVENT_ICCPROXY_LOADED:I = 0x6f

.field private static final EVENT_ICCPROXY_UPDATED:I = 0x6e

.field private static final EVENT_ICC_APP_REFRESH:I = 0x66

.field private static final EVENT_ICC_REFRESH:I = 0x65

.field private static final EVENT_ICC_STATUS_CHANGE:I = 0x64

.field private static final EVENT_LISTEN_RADIO_STATE:I = 0x16

.field private static final EVENT_LOAD_COMPLETED:I = 0x1a

.field private static final EVENT_LOAD_ICC_RESULT_ICCID:I = 0x78

.field private static final EVENT_LOAD_ICC_RESULT_IMSI_CDMA:I = 0x7a

.field private static final EVENT_LOAD_ICC_RESULT_IMSI_GSM:I = 0x79

.field private static final EVENT_LOAD_ICC_RESULT_IMSI_M:I = 0x7b

.field private static final EVENT_LOAD_ICC_RESULT_IMSI_T:I = 0x7c

.field private static final EVENT_LOAD_ICC_RESULT_MDN:I = 0x7d

.field private static final EVENT_LOAD_ICC_START:I = 0x19

.field private static final EVENT_LOAD_NV_RESULT_IMEI:I = 0x29

.field private static final EVENT_LOAD_NV_RESULT_IMSI_11_12:I = 0x2b

.field private static final EVENT_LOAD_NV_RESULT_IMSI_RIL:I = 0x2e

.field private static final EVENT_LOAD_NV_RESULT_MCC:I = 0x2a

.field private static final EVENT_LOAD_NV_RESULT_RSINFO:I = 0x2d

.field private static final EVENT_LOAD_NV_RESULT_SUBSCRI:I = 0x2c

.field private static final EVENT_LOAD_NV_START:I = 0x17

.field private static final EVENT_LOAD_PREVIOUS_INFO:I = 0x15

.field private static final EVENT_OTA_PROVISION:I = 0x18

.field private static final EVENT_RADIO_NV_READY:I = 0x3

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x1

.field private static final EVENT_RADIO_ON:I = 0x2

.field private static final EVENT_RUIM_LOCK_OR_ABSENT:I = 0x51

.field private static final EVENT_RUIM_READY:I = 0x50

.field private static final EVENT_SIM_EXPIRED:I = 0x3e

.field private static final EVENT_SIM_HOT_SWAP:I = 0x40

.field private static final EVENT_SIM_LOCK_OR_ABSENT:I = 0x3d

.field private static final EVENT_SIM_READY:I = 0x3c

.field private static final EVENT_SIM_SWAP:I = 0x3f

.field private static final SHARED_PREF_ITEM_ESN_DEVID:Ljava/lang/String; = "ESN_DEVID"

.field private static final SHARED_PREF_ITEM_ESN_RSIF:Ljava/lang/String; = "ESN_RSIF"

.field private static final SHARED_PREF_ITEM_ICCID_ICC:Ljava/lang/String; = "ICCID_ICC"

.field private static final SHARED_PREF_ITEM_IMEI:Ljava/lang/String; = "IMEI"

.field private static final SHARED_PREF_ITEM_IMEI_SV:Ljava/lang/String; = "IMEI_SV"

.field private static final SHARED_PREF_ITEM_IMSI_11_12:Ljava/lang/String; = "IMSI_11_12"

.field private static final SHARED_PREF_ITEM_IMSI_CDMA:Ljava/lang/String; = "IMSI_CDMA"

.field private static final SHARED_PREF_ITEM_IMSI_GSM:Ljava/lang/String; = "IMSI_GSM"

.field private static final SHARED_PREF_ITEM_IMSI_M_ICC:Ljava/lang/String; = "IMSI_M_ICC"

.field private static final SHARED_PREF_ITEM_IMSI_RIL:Ljava/lang/String; = "IMSI_RIL"

.field private static final SHARED_PREF_ITEM_IMSI_RSINFO:Ljava/lang/String; = "IMSI_RSINFO"

.field private static final SHARED_PREF_ITEM_IMSI_T_ICC:Ljava/lang/String; = "IMSI_T_ICC"

.field private static final SHARED_PREF_ITEM_MCC:Ljava/lang/String; = "MCC"

.field private static final SHARED_PREF_ITEM_MDN_ICC:Ljava/lang/String; = "MDN_ICC"

.field private static final SHARED_PREF_ITEM_MDN_SUBS:Ljava/lang/String; = "MDN_SUBS"

.field private static final SHARED_PREF_ITEM_MEID:Ljava/lang/String; = "MEID"

.field private static final SHARED_PREF_ITEM_MIN:Ljava/lang/String; = "MIN"

.field private static final SHARED_PREF_ITEM_NID:Ljava/lang/String; = "NID"

.field private static final SHARED_PREF_ITEM_PRL_VER_RSIF:Ljava/lang/String; = "PRL_VER_RSIF"

.field private static final SHARED_PREF_ITEM_PRL_VER_SUBS:Ljava/lang/String; = "PRL_VER_SUBS"

.field private static final SHARED_PREF_ITEM_SID:Ljava/lang/String; = "SID"

.field private static final SHARED_PREF_NAME:Ljava/lang/String; = "htc_cdma_account_preferences"

.field private static final TAG:Ljava/lang/String; = "CDMA"

.field private static final TAG_PRE:Ljava/lang/String; = "CdmaAccount "

.field private static final hiddenText:Ljava/lang/String; = "****************************************"


# instance fields
.field private isCdmaNvOnlyResult:Ljava/lang/Boolean;

.field private mAlwaysStateListening:Z

.field private mCatchCdmaNvOnlyResult:Z

.field private mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

.field private mGetHtcIccCardProxyMethod:Ljava/lang/reflect/Method;

.field private mIccCardProxyListening:Z

.field private mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

.field private mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

.field private mNvAllowance:Ljava/lang/Boolean;

.field private mRadioStateListening:Z

.field private mSimStateListening:Z

.field private nvAccessSessionId:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mNvAllowance:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCatchCdmaNvOnlyResult:Z

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    iput-object p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->registrationNoUpdate()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/HtcCdmaAccount;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->allZeroString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private allZeroString(Ljava/lang/String;)Z
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, v5

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-char v1, v0, v2

    if-nez v4, :cond_0

    const/16 v8, 0x30

    if-eq v1, v8, :cond_1

    :cond_0
    move v4, v7

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v4, v6

    goto :goto_1

    :cond_2
    if-nez v4, :cond_3

    :goto_2
    return v7

    :cond_3
    move v7, v6

    goto :goto_2
.end method

.method private clearNvAccess()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    return-void
.end method

.method private convertDmCommandResultToBCD(Ljava/lang/String;I)Ljava/lang/String;
    .locals 16

    const/16 v10, 0x10

    move-object/from16 v0, p1

    invoke-static {v0, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_0
    const-wide/16 v10, 0xa

    rem-long v10, v8, v10

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0xa

    cmp-long v10, v10, v12

    if-eqz v10, :cond_0

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    mul-long/2addr v12, v14

    add-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    :cond_0
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move/from16 v0, p2

    int-to-long v12, v0

    cmp-long v10, v10, v12

    if-ltz v10, :cond_1

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    move/from16 v0, p2

    if-ge v10, v0, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-wide/16 v10, 0xa

    div-long/2addr v8, v10

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0xa

    mul-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private decodeDmCommandResult(Landroid/os/AsyncResult;II)Ljava/lang/String;
    .locals 10

    if-eqz p1, :cond_1

    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_1

    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/16 v8, 0x8

    :try_start_0
    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v7, "0000"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v6, ""

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    if-lez v2, :cond_2

    add-int/lit8 v2, v2, -0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v0, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CdmaAccount "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    const/4 v6, 0x0

    :cond_2
    return-object v6

    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method private static displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method private getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;
    .locals 8

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->useIccCardProxyInterface()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mGetHtcIccCardProxyMethod:Ljava/lang/reflect/Method;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v5, :cond_0

    :try_start_0
    const-string v5, "com.android.internal.telephony.BaseCommands"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v5, "getHtcIccCardProxy"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mGetHtcIccCardProxyMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mGetHtcIccCardProxyMethod:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v5, :cond_1

    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mGetHtcIccCardProxyMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v5, Lcom/android/internal/telephony/BaseCommands;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/internal/telephony/IccCardProxy;

    move-object v4, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-object v4

    :catch_0
    move-exception v2

    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CdmaAccount No IccCardProxy:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CdmaAccount Access IccCardProxy:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isCdmaNvOnly()Ljava/lang/Boolean;
    .locals 7

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCatchCdmaNvOnlyResult:Z

    if-nez v6, :cond_3

    sget-object v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_ACCOUNT_CAPABILITIES:[I

    const/4 v4, 0x0

    move-object v2, v1

    array-length v5, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_2

    aget v0, v2, v3

    and-int/lit8 v6, v0, 0x2

    if-eqz v6, :cond_1

    if-nez v4, :cond_0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->isCdmaNvOnlyResult:Ljava/lang/Boolean;

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCatchCdmaNvOnlyResult:Z

    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->isCdmaNvOnlyResult:Ljava/lang/Boolean;

    return-object v6
.end method

.method private listenRadioState()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mRadioStateListening:Z

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0, v5, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x2

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x3

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForNVReady(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mRadioStateListening:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCatchCdmaNvOnlyResult:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->isCdmaNvOnly()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x3c

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x3d

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMLockedOrAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x50

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForRUIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x51

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForRUIMLockedOrAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mSimStateListening:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->useIccCardProxyInterface()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v2, 0x6e

    invoke-virtual {v0, p0, v2, v4}, Lcom/android/internal/telephony/IccCardProxy;->registerForRecordsUpdated(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v2, 0x6f

    invoke-virtual {v0, p0, v2, v4}, Lcom/android/internal/telephony/IccCardProxy;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mIccCardProxyListening:Z

    :cond_0
    return-void
.end method

.method private loadCompleteOrRetry(Landroid/os/Message;I)V
    .locals 10

    const/16 v9, 0xa

    const/4 v8, 0x0

    const/16 v6, 0x1a

    invoke-direct {p0, v6, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->obtainLoadAccountResultMessage(ILandroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    if-eqz v2, :cond_2

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-eq v6, v9, :cond_0

    iget v6, p1, Landroid/os/Message;->arg2:I

    const/16 v7, 0x14

    if-ne v6, v7, :cond_3

    :cond_0
    if-ne p2, v9, :cond_3

    const/16 v6, 0x17

    iput v6, v2, Landroid/os/Message;->what:I

    :goto_0
    if-eqz v2, :cond_2

    invoke-static {v2, v8, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    iget-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    const-string v6, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CdmaAccount Current loaded: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v6, :cond_1

    iget-object v6, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    check-cast v6, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->dump()V

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void

    :cond_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v0, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->dump()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->correctBadValues()V

    const/4 v5, 0x1

    if-eqz v5, :cond_4

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->storeIntoPreviousInfo(Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget v7, p1, Landroid/os/Message;->arg1:I

    iput v7, v6, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->transactionId:I

    goto :goto_0

    :cond_4
    const/4 v3, -0x1

    iget v6, v2, Landroid/os/Message;->arg2:I

    add-int/lit8 v4, v6, -0x14

    if-ltz v4, :cond_6

    if-gez v4, :cond_6

    iget v6, v2, Landroid/os/Message;->arg2:I

    add-int/lit8 v3, v6, 0x1

    :cond_5
    :goto_1
    if-ltz v3, :cond_8

    iput v3, v2, Landroid/os/Message;->arg2:I

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->nvAccessSessionId:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->nvAccessSessionId:I

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->clearNvAccess()V

    invoke-direct {p0, v3, v8}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->triggerAccountAccess(ILcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;)V

    const/4 v2, 0x0

    goto :goto_0

    :cond_6
    iget v6, v2, Landroid/os/Message;->arg2:I

    add-int/lit8 v4, v6, -0xa

    if-ltz v4, :cond_7

    if-gez v4, :cond_7

    iget v6, v2, Landroid/os/Message;->arg2:I

    add-int/lit8 v3, v6, 0x1

    goto :goto_1

    :cond_7
    iget v6, v2, Landroid/os/Message;->arg2:I

    add-int/lit8 v4, v6, 0x0

    if-ltz v4, :cond_5

    const/4 v6, 0x2

    if-ge v4, v6, :cond_5

    iget v6, v2, Landroid/os/Message;->arg2:I

    add-int/lit8 v3, v6, 0x1

    goto :goto_1

    :cond_8
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget v7, p1, Landroid/os/Message;->arg1:I

    iput v7, v6, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->transactionId:I

    goto/16 :goto_0
.end method

.method private loadIccIccId(Landroid/os/Message;)V
    .locals 6

    const/16 v4, 0x78

    invoke-direct {p0, v4, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->obtainLoadAccountResultMessage(ILandroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->useIccCardProxyInterface()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->arg2:I

    const/16 v5, 0x14

    if-ne v4, v5, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v4, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccCardProxy;->getIccFileHandler(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    :cond_0
    :goto_0
    if-nez v3, :cond_1

    const-string v4, "Not required"

    invoke-direct {p0, v2, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->sendLoadIccFailMessage(Landroid/os/Message;Ljava/lang/String;)V

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    const/16 v4, 0x2fe2

    invoke-virtual {v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    :cond_2
    return-void

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v4, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->sendLoadIccFailMessage(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private loadIccImsiCdma(Landroid/os/Message;)V
    .locals 6

    const/16 v4, 0x7a

    invoke-direct {p0, v4, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->obtainLoadAccountResultMessage(ILandroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->useIccCardProxyInterface()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->arg2:I

    const/16 v5, 0x14

    if-ne v4, v5, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v4, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccCardProxy;->getIccFileHandler(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    :cond_0
    :goto_0
    if-nez v3, :cond_1

    const-string v4, "Not required"

    invoke-direct {p0, v2, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->sendLoadIccFailMessage(Landroid/os/Message;Ljava/lang/String;)V

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    :cond_2
    return-void

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->sendLoadIccFailMessage(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private loadIccImsiGsm(Landroid/os/Message;)V
    .locals 6

    const/16 v4, 0x79

    invoke-direct {p0, v4, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->obtainLoadAccountResultMessage(ILandroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->useIccCardProxyInterface()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->arg2:I

    const/16 v5, 0x14

    if-ne v4, v5, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v4, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccCardProxy;->getIccFileHandler(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    :cond_0
    :goto_0
    if-nez v3, :cond_1

    const-string v4, "Not required"

    invoke-direct {p0, v2, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->sendLoadIccFailMessage(Landroid/os/Message;Ljava/lang/String;)V

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    :cond_2
    return-void

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->sendLoadIccFailMessage(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private loadIccImsiM(Landroid/os/Message;)V
    .locals 5

    const/16 v3, 0x7b

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->obtainLoadAccountResultMessage(ILandroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->useIccCardProxyInterface()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    iget v3, p1, Landroid/os/Message;->arg2:I

    const/16 v4, 0x14

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    :cond_0
    if-nez v2, :cond_1

    const-string v3, "Not required"

    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->sendLoadIccFailMessage(Landroid/os/Message;Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    const/16 v3, 0x6f22

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->sendLoadIccFailMessage(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadIccImsiT(Landroid/os/Message;)V
    .locals 5

    const/16 v3, 0x7c

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->obtainLoadAccountResultMessage(ILandroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->useIccCardProxyInterface()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    iget v3, p1, Landroid/os/Message;->arg2:I

    const/16 v4, 0x14

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    :cond_0
    if-nez v2, :cond_1

    const-string v3, "Not required"

    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->sendLoadIccFailMessage(Landroid/os/Message;Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    const/16 v3, 0x6f23

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->sendLoadIccFailMessage(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadIccMdn(Landroid/os/Message;)V
    .locals 7

    const/4 v4, 0x1

    const/16 v5, 0x7d

    invoke-direct {p0, v5, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->obtainLoadAccountResultMessage(ILandroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->useIccCardProxyInterface()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v3, 0x0

    iget v5, p1, Landroid/os/Message;->arg2:I

    const/16 v6, 0x14

    if-ne v5, v6, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v5, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/IccCardProxy;->getIccFileHandler(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    if-eqz v1, :cond_3

    move v3, v4

    :cond_0
    :goto_0
    if-nez v3, :cond_1

    const-string v5, "Not required"

    invoke-direct {p0, v2, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->sendLoadIccFailMessage(Landroid/os/Message;Ljava/lang/String;)V

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    const/16 v5, 0x6f44

    invoke-virtual {v1, v5, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    :cond_2
    return-void

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v5, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    invoke-direct {p0, v2, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->sendLoadIccFailMessage(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private loadNvImei(Landroid/os/Message;)V
    .locals 2

    const/16 v1, 0x29

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->obtainLoadAccountResultMessage(ILandroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method private loadNvImsi1112(Landroid/os/Message;)V
    .locals 3

    const/16 v1, 0x2b

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->obtainLoadAccountResultMessage(ILandroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const-string v2, "C826B10000"

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommand(Ljava/lang/String;Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method private loadNvImsiRil(Landroid/os/Message;)V
    .locals 2

    const/16 v1, 0x2e

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->obtainLoadAccountResultMessage(ILandroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getIMSI(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method private loadNvMcc(Landroid/os/Message;)V
    .locals 3

    const/16 v1, 0x2a

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->obtainLoadAccountResultMessage(ILandroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const-string v2, "C826B00000"

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommand(Ljava/lang/String;Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method private loadNvRsInfo(Landroid/os/Message;)V
    .locals 2

    const/16 v1, 0x2d

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->obtainLoadAccountResultMessage(ILandroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->requestGetRadioSysInfo(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method private loadNvSubscription(Landroid/os/Message;)V
    .locals 2

    const/16 v1, 0x2c

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->obtainLoadAccountResultMessage(ILandroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method private loadPreviousInfo()V
    .locals 7

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mContext:Landroid/content/Context;

    const-string v4, "htc_cdma_account_preferences"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    new-instance v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "Preload"

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;-><init>(Lcom/android/internal/telephony/cdma/HtcCdmaAccount;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "MCC"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Mcc:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "IMSI_11_12"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imsi_11_12:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "MIN"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Min:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "IMSI_RIL"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRil:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "IMSI_RSINFO"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRsinfo:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "MDN_SUBS"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnSubs:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    :try_start_7
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "ESN_RSIF"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnRsif:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    :goto_7
    :try_start_8
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "PRL_VER_SUBS"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerSubs:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    :goto_8
    :try_start_9
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "PRL_VER_RSIF"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerRsif:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    :goto_9
    :try_start_a
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "SID"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Sid:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    :goto_a
    :try_start_b
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "NID"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Nid:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    :goto_b
    :try_start_c
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "IMEI"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imei:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    :goto_c
    :try_start_d
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "IMEI_SV"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImeiSv:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    :goto_d
    :try_start_e
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "ESN_DEVID"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnDevId:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    :goto_e
    :try_start_f
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "MEID"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Meid:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    :goto_f
    :try_start_10
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "ICCID_ICC"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->IccIdIcc:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    :goto_10
    :try_start_11
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "IMSI_GSM"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiGsmIcc:Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11

    :goto_11
    :try_start_12
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "IMSI_CDMA"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiCdmaIcc:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_12

    :goto_12
    :try_start_13
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "IMSI_M_ICC"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsimIcc:Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_13

    :goto_13
    :try_start_14
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "IMSI_T_ICC"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsitIcc:Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_14

    :goto_14
    :try_start_15
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "MDN_ICC"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnIcc:Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_15

    :goto_15
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->dump()V

    :cond_0
    if-eqz v1, :cond_1

    :try_start_16
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mContext:Landroid/content/Context;

    const-string v4, "htc_cdma_account_preferences"

    invoke-virtual {v3, v4}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_16

    :cond_1
    :goto_16
    return-void

    :catch_0
    move-exception v0

    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CdmaAccount exception reading previous info : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Mcc:Ljava/lang/String;

    const/4 v1, 0x1

    goto/16 :goto_1

    :catch_2
    move-exception v0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imsi_11_12:Ljava/lang/String;

    const/4 v1, 0x1

    goto/16 :goto_2

    :catch_3
    move-exception v0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Min:Ljava/lang/String;

    const/4 v1, 0x1

    goto/16 :goto_3

    :catch_4
    move-exception v0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRil:Ljava/lang/String;

    const/4 v1, 0x1

    goto/16 :goto_4

    :catch_5
    move-exception v0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRsinfo:Ljava/lang/String;

    const/4 v1, 0x1

    goto/16 :goto_5

    :catch_6
    move-exception v0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnSubs:Ljava/lang/String;

    const/4 v1, 0x1

    goto/16 :goto_6

    :catch_7
    move-exception v0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnRsif:Ljava/lang/String;

    const/4 v1, 0x1

    goto/16 :goto_7

    :catch_8
    move-exception v0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerSubs:Ljava/lang/String;

    const/4 v1, 0x1

    goto/16 :goto_8

    :catch_9
    move-exception v0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerRsif:Ljava/lang/String;

    const/4 v1, 0x1

    goto/16 :goto_9

    :catch_a
    move-exception v0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Sid:Ljava/lang/String;

    const/4 v1, 0x1

    goto/16 :goto_a

    :catch_b
    move-exception v0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Nid:Ljava/lang/String;

    const/4 v1, 0x1

    goto/16 :goto_b

    :catch_c
    move-exception v0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imei:Ljava/lang/String;

    const/4 v1, 0x1

    goto/16 :goto_c

    :catch_d
    move-exception v0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImeiSv:Ljava/lang/String;

    const/4 v1, 0x1

    goto/16 :goto_d

    :catch_e
    move-exception v0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnDevId:Ljava/lang/String;

    const/4 v1, 0x1

    goto/16 :goto_e

    :catch_f
    move-exception v0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Meid:Ljava/lang/String;

    const/4 v1, 0x1

    goto/16 :goto_f

    :catch_10
    move-exception v0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->IccIdIcc:Ljava/lang/String;

    const/4 v1, 0x1

    goto/16 :goto_10

    :catch_11
    move-exception v0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiGsmIcc:Ljava/lang/String;

    const/4 v1, 0x1

    goto/16 :goto_11

    :catch_12
    move-exception v0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiCdmaIcc:Ljava/lang/String;

    const/4 v1, 0x1

    goto/16 :goto_12

    :catch_13
    move-exception v0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsimIcc:Ljava/lang/String;

    const/4 v1, 0x1

    goto/16 :goto_13

    :catch_14
    move-exception v0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsitIcc:Ljava/lang/String;

    const/4 v1, 0x1

    goto/16 :goto_14

    :catch_15
    move-exception v0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnIcc:Ljava/lang/String;

    const/4 v1, 0x1

    goto/16 :goto_15

    :catch_16
    move-exception v0

    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CdmaAccount exception removing previous info : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16
.end method

.method private nvAccessAllowance(Ljava/lang/Boolean;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mNvAllowance:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mNvAllowance:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mNvAllowance:Ljava/lang/Boolean;

    invoke-direct {p0, v3, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->triggerAccountAccess(ILcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaAccount dump acc statue : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->nvAccessSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->nvAccessSessionId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->nvAccessSessionId:I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mNvAllowance:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->clearNvAccess()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->nvAccessSessionId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->nvAccessSessionId:I

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mNvAllowance:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->clearNvAccess()V

    invoke-direct {p0, v3, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->triggerAccountAccess(ILcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->nvAccessSessionId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->nvAccessSessionId:I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mNvAllowance:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->clearNvAccess()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mNvAllowance:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mNvAllowance:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mNvAllowance:Ljava/lang/Boolean;

    invoke-direct {p0, v3, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->triggerAccountAccess(ILcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;)V

    goto :goto_0
.end method

.method private obtainLoadAccountResultMessage(ILandroid/os/Message;)Landroid/os/Message;
    .locals 4

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->trResultAvalibility(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CdmaAccount Status before load : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    check-cast v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->dump()V

    iget v1, p2, Landroid/os/Message;->arg1:I

    iget v2, p2, Landroid/os/Message;->arg2:I

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private otaProvisionUpdate(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_4

    const/4 v3, 0x0

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v1, v4

    check-cast v1, [I

    aget v4, v1, v5

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mNvAllowance:Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mNvAllowance:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->nvAccessSessionId:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->nvAccessSessionId:I

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->clearNvAccess()V

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->isCdmaNvOnly()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->triggerAccountAccess(ILcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;)V

    :cond_2
    :goto_1
    return-void

    :sswitch_0
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->useIccCardProxyInterface()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/16 v4, 0xa

    invoke-direct {p0, v4, v6}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->triggerAccountAccess(ILcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;)V

    goto :goto_1

    :cond_4
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CdmaAccount OTA_UPDATE exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xa -> :sswitch_0
        0xf -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method private parseAccountResultMessage(Landroid/os/Message;)Landroid/os/AsyncResult;
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->trResultAvalibility(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CdmaAccount Status after load : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    check-cast v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->dump()V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseIccIccId(Landroid/os/Message;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseAccountResultMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v1, v3

    check-cast v1, [B

    if-eqz v1, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v3, v4}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->IccIdIcc:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CdmaAccount GET_ICC_ICCID exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseIccImsiCdma(Landroid/os/Message;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseAccountResultMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v1, v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiCdmaIcc:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CdmaAccount GET_ICC_IMSI_CDMA exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseIccImsiGsm(Landroid/os/Message;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseAccountResultMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v1, v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiGsmIcc:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CdmaAccount GET_ICC_IMSI_GSM exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseIccImsiM(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseAccountResultMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    if-eqz v1, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CdmaAccount GET_ICC_IMSI_M exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseIccImsiT(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseAccountResultMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    if-eqz v1, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CdmaAccount GET_ICC_IMSI_T exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseIccMdn(Landroid/os/Message;)V
    .locals 8

    const/4 v6, 0x1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseAccountResultMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_2

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    move-object v1, v5

    check-cast v1, [B

    if-eqz v1, :cond_1

    array-length v5, v1

    if-le v5, v6, :cond_1

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const/4 v5, 0x0

    aget-byte v5, v1, v5

    and-int/lit8 v2, v5, 0xf

    invoke-static {v1, v6, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    array-length v5, v1

    const/16 v6, 0xa

    if-le v5, v6, :cond_0

    const/16 v5, 0x9

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x91

    if-ne v5, v6, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_0
    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnIcc:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CdmaAccount GET_ICC_MDN exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseNvImei(Landroid/os/Message;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseAccountResultMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_3

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object v1, v3

    check-cast v1, [Ljava/lang/String;

    if-eqz v1, :cond_1

    array-length v3, v1

    const/4 v4, 0x4

    if-lt v3, v4, :cond_1

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imei:Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImeiSv:Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v3, v1, v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnDevId:Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v3, v1, v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Meid:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CdmaAccount GET_DEVICE_ID error result: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_2

    array-length v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v3, "null"

    goto :goto_1

    :cond_3
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CdmaAccount GET_DEVICE_ID exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseNvImsi1112(Landroid/os/Message;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseAccountResultMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    const/4 v1, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x4

    invoke-direct {p0, v0, v4, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->decodeDmCommandResult(Landroid/os/AsyncResult;II)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CdmaAccount GET_MCC : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->convertDmCommandResultToBCD(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->convertDmCommandResultToBCD(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imsi_11_12:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CdmaAccount GET_IMSI_11_12 exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseNvImsiRil(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseAccountResultMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRil:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CdmaAccount GET_IMSI exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseNvMcc(Landroid/os/Message;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseAccountResultMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x6

    invoke-direct {p0, v0, v4, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->decodeDmCommandResult(Landroid/os/AsyncResult;II)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CdmaAccount GET_MCC : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->convertDmCommandResultToBCD(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->convertDmCommandResultToBCD(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Mcc:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CdmaAccount GET_MCC exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseNvRsInfo(Landroid/os/Message;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseAccountResultMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    if-eqz v2, :cond_1

    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v3, v2, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->esn:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnRsif:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->imsi:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRsinfo:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->prl_version:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerRsif:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "CDMA"

    const-string v4, "CdmaAccount CDMA_RS_INFO error result: null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CdmaAccount CDMA_RS_INFO exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseNvSubscription(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x4

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseAccountResultMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_3

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object v1, v3

    check-cast v1, [Ljava/lang/String;

    if-eqz v1, :cond_1

    array-length v3, v1

    if-lt v3, v5, :cond_1

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnSubs:Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Sid:Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v3, v1, v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Nid:Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v3, v1, v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Min:Ljava/lang/String;

    array-length v3, v1

    const/4 v4, 0x5

    if-lt v3, v4, :cond_0

    aget-object v3, v1, v5

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerSubs:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CdmaAccount GET_CDMA_SUBSCRIPTION error result: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_2

    array-length v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v3, "null"

    goto :goto_1

    :cond_3
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CdmaAccount GET_CDMA_SUBSCRIPTION exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registrationNoUpdate()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x18

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x64

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x65

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x3e

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMExpiredStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x3f

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMSWAPStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x40

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMHotSwap(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mAlwaysStateListening:Z

    :cond_0
    return-void
.end method

.method private sendLoadIccFailMessage(Landroid/os/Message;Ljava/lang/String;)V
    .locals 3

    move-object v0, p2

    if-nez v0, :cond_0

    const-string v0, "Unable to load this"

    :cond_0
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private simStatusUpdate(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->nvAccessSessionId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->nvAccessSessionId:I

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->clearNvAccess()V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_1

    :cond_0
    const/16 v0, 0x14

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->triggerAccountAccess(ILcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;)V

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0xa

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->triggerAccountAccess(ILcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;)V

    goto :goto_0
.end method

.method private storeIntoPreviousInfo(Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mContext:Landroid/content/Context;

    const-string v5, "htc_cdma_account_preferences"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v2, :cond_15

    if-eqz v0, :cond_15

    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Mcc:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v4, "MCC"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Mcc:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imsi_11_12:Ljava/lang/String;

    if-eqz v4, :cond_1

    const-string v4, "IMSI_11_12"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imsi_11_12:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Min:Ljava/lang/String;

    if-eqz v4, :cond_2

    const-string v4, "MIN"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Min:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_2
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRil:Ljava/lang/String;

    if-eqz v4, :cond_3

    const-string v4, "IMSI_RIL"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRil:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_3
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRsinfo:Ljava/lang/String;

    if-eqz v4, :cond_4

    const-string v4, "IMSI_RSINFO"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRsinfo:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_4
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnSubs:Ljava/lang/String;

    if-eqz v4, :cond_5

    const-string v4, "MDN_SUBS"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnSubs:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_5
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnRsif:Ljava/lang/String;

    if-eqz v4, :cond_6

    const-string v4, "ESN_RSIF"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnRsif:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_6
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerSubs:Ljava/lang/String;

    if-eqz v4, :cond_7

    const-string v4, "PRL_VER_SUBS"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerSubs:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_7
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerRsif:Ljava/lang/String;

    if-eqz v4, :cond_8

    const-string v4, "PRL_VER_RSIF"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerRsif:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_8
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Sid:Ljava/lang/String;

    if-eqz v4, :cond_9

    const-string v4, "SID"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Sid:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_9
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Nid:Ljava/lang/String;

    if-eqz v4, :cond_a

    const-string v4, "NID"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Nid:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_a
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imei:Ljava/lang/String;

    if-eqz v4, :cond_b

    const-string v4, "IMEI"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imei:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_b
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImeiSv:Ljava/lang/String;

    if-eqz v4, :cond_c

    const-string v4, "IMEI_SV"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImeiSv:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_c
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnDevId:Ljava/lang/String;

    if-eqz v4, :cond_d

    const-string v4, "ESN_DEVID"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnDevId:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_d
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Meid:Ljava/lang/String;

    if-eqz v4, :cond_e

    const-string v4, "MEID"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Meid:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_e
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->IccIdIcc:Ljava/lang/String;

    if-eqz v4, :cond_f

    const-string v4, "ICCID_ICC"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->IccIdIcc:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_f
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiGsmIcc:Ljava/lang/String;

    if-eqz v4, :cond_10

    const-string v4, "IMSI_GSM"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiGsmIcc:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_10
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiCdmaIcc:Ljava/lang/String;

    if-eqz v4, :cond_11

    const-string v4, "IMSI_CDMA"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiCdmaIcc:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_11
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsimIcc:Ljava/lang/String;

    if-eqz v4, :cond_12

    const-string v4, "IMSI_M_ICC"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsimIcc:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_12
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsitIcc:Ljava/lang/String;

    if-eqz v4, :cond_13

    const-string v4, "IMSI_T_ICC"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsitIcc:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_13
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnIcc:Ljava/lang/String;

    if-eqz v4, :cond_14

    const-string v4, "MDN_ICC"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnIcc:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_14
    :try_start_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_15
    :goto_1
    if-eqz v2, :cond_16

    :try_start_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mContext:Landroid/content/Context;

    const-string v5, "htc_cdma_account_preferences"

    invoke-virtual {v4, v5}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_16
    :goto_2
    return-void

    :catch_0
    move-exception v1

    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CdmaAccount exception writing previous info : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CdmaAccount exception writing account info : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CdmaAccount exception removing previous info : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private trResultAvalibility(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->nvAccessSessionId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private triggerAccountAccess(ILcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;)V
    .locals 8

    const/4 v6, 0x0

    move-object v4, p2

    if-nez v4, :cond_0

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    invoke-direct {v4, p0, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;-><init>(Lcom/android/internal/telephony/cdma/HtcCdmaAccount;Ljava/lang/String;)V

    :cond_0
    const/16 v1, 0x17

    const/16 v5, 0x14

    if-lt p1, v5, :cond_2

    const/16 v1, 0x19

    :cond_1
    :goto_0
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->nvAccessSessionId:I

    invoke-virtual {p0, v1, v5, p1, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-static {v2, v6, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CdmaAccount Access log created: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    check-cast v5, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->dump()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_2
    const/16 v5, 0xa

    if-lt p1, v5, :cond_1

    const/16 v1, 0x19

    goto :goto_0
.end method

.method private unRegistrationNoUpdate()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mAlwaysStateListening:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccStatusChanged(Landroid/os/Handler;)V

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMExpiredStatus(Landroid/os/Handler;)V

    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMSWAPStatus(Landroid/os/Handler;)V

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMHotSwap(Landroid/os/Handler;)V

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->removeMessages(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mAlwaysStateListening:Z

    :cond_0
    return-void
.end method

.method private unlistenRadioState()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mRadioStateListening:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNVReady(Landroid/os/Handler;)V

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->removeMessages(I)V

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mRadioStateListening:Z

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mSimStateListening:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMReady(Landroid/os/Handler;)V

    const/16 v1, 0x3c

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMLockedOrAbsent(Landroid/os/Handler;)V

    const/16 v1, 0x3d

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRUIMReady(Landroid/os/Handler;)V

    const/16 v1, 0x50

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRUIMLockedOrAbsent(Landroid/os/Handler;)V

    const/16 v1, 0x51

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->removeMessages(I)V

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mSimStateListening:Z

    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mIccCardProxyListening:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->useIccCardProxyInterface()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccCardProxy;->unregisterForRecordsUpdated(Landroid/os/Handler;)V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccCardProxy;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    :cond_1
    const/16 v1, 0x6e

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->removeMessages(I)V

    const/16 v1, 0x6f

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->removeMessages(I)V

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mIccCardProxyListening:Z

    :cond_2
    return-void
.end method

.method private useIccCardProxyInterface()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->removeMessages(I)V

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->unlistenRadioState()V

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->unRegistrationNoUpdate()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->nvAccessAllowance(Ljava/lang/Boolean;)V

    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->removeMessages(I)V

    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->removeMessages(I)V

    return-void
.end method

.method public getCdmaImsi()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->isCdmaNvOnly()Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    if-eqz v1, :cond_5

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsimIcc:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsimIcc:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiCdmaIcc:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiCdmaIcc:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRsinfo:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRsinfo:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRil:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRil:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Mcc:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imsi_11_12:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Min:Ljava/lang/String;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Mcc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imsi_11_12:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Min:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    if-eqz v1, :cond_b

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsimIcc:Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string v1, "CDMA"

    const-string v2, "CdmaAccount [get from preload] ImsimIcc"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsimIcc:Ljava/lang/String;

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiCdmaIcc:Ljava/lang/String;

    if-eqz v1, :cond_8

    const-string v1, "CDMA"

    const-string v2, "CdmaAccount [get from preload] ImsiCdmaIcc"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiCdmaIcc:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRsinfo:Ljava/lang/String;

    if-eqz v1, :cond_9

    const-string v1, "CDMA"

    const-string v2, "CdmaAccount [get from preload] ImsiRsinfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRsinfo:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRil:Ljava/lang/String;

    if-eqz v1, :cond_a

    const-string v1, "CDMA"

    const-string v2, "CdmaAccount [get from preload] ImsiRil"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRil:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Mcc:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imsi_11_12:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Min:Ljava/lang/String;

    if-eqz v1, :cond_b

    const-string v1, "CDMA"

    const-string v2, "CdmaAccount [get from preload] Min"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Mcc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imsi_11_12:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Min:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public getGsmImsi()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccId()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->isCdmaNvOnly()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->IccIdIcc:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->IccIdIcc:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->IccIdIcc:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "CDMA"

    const-string v2, "CdmaAccount [get from preload] IccId"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->IccIdIcc:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getImsImsi()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMdn()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->isCdmaNvOnly()Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnIcc:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnIcc:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnSubs:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnSubs:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    if-eqz v1, :cond_5

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnIcc:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, "CDMA"

    const-string v2, "CdmaAccount [get from preload] MdnIcc"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnIcc:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnSubs:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v1, "CDMA"

    const-string v2, "CdmaAccount [get from preload] MdnSubs"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnSubs:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaAccount msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->nvAccessAllowance(Ljava/lang/Boolean;)V

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->nvAccessAllowance(Ljava/lang/Boolean;)V

    goto :goto_0

    :sswitch_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->nvAccessAllowance(Ljava/lang/Boolean;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/IccFileHandler;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->loadPreviousInfo()V

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->sendEmptyMessage(I)Z

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->listenRadioState()V

    goto :goto_0

    :sswitch_6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->loadNvImei(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_7
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->otaProvisionUpdate(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_8
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseNvImei(Landroid/os/Message;)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->loadNvMcc(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_9
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseNvMcc(Landroid/os/Message;)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->loadNvImsi1112(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseNvImsi1112(Landroid/os/Message;)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->loadNvSubscription(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseNvSubscription(Landroid/os/Message;)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->loadNvRsInfo(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseNvRsInfo(Landroid/os/Message;)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->loadNvImsiRil(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseNvImsiRil(Landroid/os/Message;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->loadCompleteOrRetry(Landroid/os/Message;I)V

    goto :goto_0

    :sswitch_e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->simStatusUpdate(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->loadIccIccId(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_10
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseIccIccId(Landroid/os/Message;)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->loadIccImsiGsm(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_11
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseIccImsiGsm(Landroid/os/Message;)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->loadIccImsiCdma(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_12
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseIccImsiCdma(Landroid/os/Message;)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->loadIccImsiM(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_13
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseIccImsiM(Landroid/os/Message;)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->loadIccImsiT(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_14
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseIccImsiT(Landroid/os/Message;)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->loadIccMdn(Landroid/os/Message;)V

    goto/16 :goto_0

    :sswitch_15
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseIccMdn(Landroid/os/Message;)V

    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->loadCompleteOrRetry(Landroid/os/Message;I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x15 -> :sswitch_4
        0x16 -> :sswitch_5
        0x17 -> :sswitch_6
        0x18 -> :sswitch_7
        0x19 -> :sswitch_f
        0x1a -> :sswitch_0
        0x29 -> :sswitch_8
        0x2a -> :sswitch_9
        0x2b -> :sswitch_a
        0x2c -> :sswitch_b
        0x2d -> :sswitch_c
        0x2e -> :sswitch_d
        0x3c -> :sswitch_e
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_e
        0x40 -> :sswitch_e
        0x50 -> :sswitch_e
        0x51 -> :sswitch_0
        0x64 -> :sswitch_e
        0x65 -> :sswitch_e
        0x66 -> :sswitch_e
        0x6e -> :sswitch_e
        0x6f -> :sswitch_e
        0x78 -> :sswitch_10
        0x79 -> :sswitch_11
        0x7a -> :sswitch_12
        0x7b -> :sswitch_13
        0x7c -> :sswitch_14
        0x7d -> :sswitch_15
    .end sparse-switch
.end method

.method public init(Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 1

    const/16 v0, 0x15

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
