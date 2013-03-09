.class public Lcom/android/settings/framework/app/HtcPhoneService;
.super Landroid/app/IntentService;
.source "HtcPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/app/HtcPhoneService$1;,
        Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;,
        Lcom/android/settings/framework/app/HtcPhoneService$MyHandler;,
        Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;
    }
.end annotation


# static fields
.field private static final CDMA_ERI_INDEX:I = 0x5

.field private static final CDMA_ICC_INDEX:I = 0x4

.field private static final CDMA_IMEI_INDEX:I = 0x6

.field private static final CDMA_IMEI_SV_INDEX:I = 0x7

.field private static final CDMA_LIFE_TIME_TOTAL_CALLS_INDEX:I = 0x8

.field private static final CDMA_LIFE_TIME_TOTAL_DATA_RX_INDEX:I = 0xa

.field private static final CDMA_LIFE_TIME_TOTAL_DATA_TX_INDEX:I = 0xb

.field private static final CDMA_LIFE_TIME_TOTAL_MINS_INDEX:I = 0x9

.field private static final CDMA_NAI_INDEX:I = 0x1

.field private static final CDMA_PRI_INDEX:I = 0x2

.field private static final CDMA_PRL_INDEX:I = 0x3

.field private static final DM_NVI_ID_DATACALL:Ljava/lang/String; = "C8F81E0000"

.field private static final DM_NVI_ID_MOHOME:Ljava/lang/String; = "C8F81A0000"

.field private static final DM_NVI_ID_MOROAM:Ljava/lang/String; = "C8F81B0000"

.field private static final DM_NVI_ID_MTHOME:Ljava/lang/String; = "C8F81C0000"

.field private static final DM_NVI_ID_MTROAM:Ljava/lang/String; = "C8F81D0000"

.field private static final ERR_NV_CMD_FAILED:Ljava/lang/String; = "0400"

.field private static final ERR_NV_INTERNAL_DMSS_USE:Ljava/lang/String; = "0100"

.field private static final ERR_NV_LENGTH:I = 0x4

.field private static final ERR_NV_MEMORY_FULL:Ljava/lang/String; = "0300"

.field private static final ERR_NV_NOT_EXIST_OR_BAD_PARAMS:Ljava/lang/String; = "0600"

.field private static final ERR_NV_NOT_RECOGN_CMD:Ljava/lang/String; = "0200"

.field private static final ERR_NV_NOT_SUPPORT:Ljava/lang/String; = "0500"

.field private static final ERR_NV_READ_ONLY:Ljava/lang/String; = "0700"

.field private static final EVENT_GET_CDMA_DATA_CALL:I = 0x3ee

.field private static final EVENT_GET_CDMA_ERI_VERSION:I = 0x3e9

.field private static final EVENT_GET_CDMA_MOHOME_CALL:I = 0x3ea

.field private static final EVENT_GET_CDMA_MOROAM_CALL:I = 0x3eb

.field private static final EVENT_GET_CDMA_MTHOME_CALL:I = 0x3ec

.field private static final EVENT_GET_CDMA_MTROAM_CALL:I = 0x3ed

.field private static final EVENT_GET_CDMA_PROFILE1_NAI:I = 0x384

.field private static final NV_SUCCESS:Ljava/lang/String; = "0000"

.field public static PHONE_SERVICE_ACTION:Ljava/lang/String; = null

.field public static PHONE_TASK_INDEX_NAME:Ljava/lang/String; = null

.field private static final REFRESH_LIFE_STATISTICS:I = 0x64

.field private static final REFRESH_LIFE_STATISTICS_2:I = 0x65

.field public static final STATE_SEND_ALREADY_AND_FAILED:I = 0x1

.field public static final STATE_SEND_ALREADY_AND_NOT_SUPPORT:I = 0x2

.field public static final STATE_SEND_ALREADY_AND_SUCCESS:I

.field private static final TAG:Ljava/lang/String;

.field private static mCmdParser:Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;

.field private static mLifeCallCounter:J

.field private static mLifeCallTimer:J

.field private static mLifeDataRX:J

.field private static mLifeDataTX:J


# instance fields
.field private final ERI_CMD:Ljava/lang/String;

.field private final PRO1_NAI_CMD:Ljava/lang/String;

.field key:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/android/settings/framework/app/HtcPhoneService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/app/HtcPhoneService;->TAG:Ljava/lang/String;

    .line 112
    const-string v0, "com.android.settings.framework.app.action.PHONE_SERVICE_ACTION"

    sput-object v0, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_SERVICE_ACTION:Ljava/lang/String;

    .line 114
    const-string v0, "PhoneTaskIndexField"

    sput-object v0, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_TASK_INDEX_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 118
    sget-object v0, Lcom/android/settings/framework/app/HtcPhoneService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 329
    const-string v0, "C826D10101"

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcPhoneService;->PRO1_NAI_CMD:Ljava/lang/String;

    .line 330
    new-instance v0, Ljava/lang/String;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcPhoneService;->key:Ljava/lang/String;

    .line 335
    const-string v0, "C85904000A4552492f303030303400"

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcPhoneService;->ERI_CMD:Ljava/lang/String;

    .line 119
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcPhoneService;->initial()V

    .line 120
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-static {p0}, Lcom/android/settings/framework/app/HtcPhoneService;->parseResponse(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-static {p0}, Lcom/android/settings/framework/app/HtcPhoneService;->updateLifeStatistics(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-static {p0}, Lcom/android/settings/framework/app/HtcPhoneService;->updateLifeStatistics2(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/settings/framework/app/HtcPhoneService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-static {p0}, Lcom/android/settings/framework/app/HtcPhoneService;->validateStateOfNv(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static doStringToASCII(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "str"

    .prologue
    .line 548
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 549
    .local v3, len:I
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x2

    .line 550
    .local v2, j:I
    const-string v4, ""

    .line 552
    .local v4, result:Ljava/lang/String;
    :goto_0
    if-gt v2, v3, :cond_0

    .line 553
    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 554
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

    .line 555
    move v1, v2

    .line 556
    add-int/lit8 v2, v2, 0x2

    .line 557
    goto :goto_0

    .line 558
    .end local v5           #tmp:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 559
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 561
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    return-object v4
.end method

.method private ensurePhoneObject()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_0

    .line 131
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 133
    :cond_0
    return-void
.end method

.method private initial()V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcPhoneService;->ensurePhoneObject()V

    .line 124
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/android/settings/framework/app/HtcPhoneService$MyHandler;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/app/HtcPhoneService$MyHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mHandler:Landroid/os/Handler;

    .line 126
    :cond_0
    return-void
.end method

.method private static parseResponse(Ljava/lang/String;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 659
    sget-object v0, Lcom/android/settings/framework/app/HtcPhoneService;->mCmdParser:Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;

    invoke-virtual {v0, p0}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->validateStateOfNv(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 660
    sget-object v0, Lcom/android/settings/framework/app/HtcPhoneService;->mCmdParser:Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;

    invoke-virtual {v0, p0}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->parseCmd(Ljava/lang/String;)V

    .line 662
    :cond_0
    return-void
.end method

.method private sendDMCommand(Ljava/lang/String;)V
    .locals 3
    .parameter "cmd"

    .prologue
    .line 668
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 670
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v1, :cond_0

    .line 671
    sget-object v1, Lcom/android/settings/framework/app/HtcPhoneService;->TAG:Ljava/lang/String;

    const-string v2, "sendDMCommand error: null phone"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :goto_0
    return-void

    .line 674
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/Phone;->requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private sendDMCommand2(Ljava/lang/String;)V
    .locals 3
    .parameter "cmd"

    .prologue
    .line 678
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 680
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v1, :cond_0

    .line 681
    sget-object v1, Lcom/android/settings/framework/app/HtcPhoneService;->TAG:Ljava/lang/String;

    const-string v2, "sendDMCommand error: null phone"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :goto_0
    return-void

    .line 684
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/Phone;->requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private static updateLifeStatistics(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 577
    sget-object v4, Lcom/android/settings/framework/app/HtcPhoneService;->mCmdParser:Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;

    invoke-virtual {v4}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->getParseResult()Z

    move-result v4

    if-nez v4, :cond_0

    .line 578
    sget-object v4, Lcom/android/settings/framework/app/HtcPhoneService;->TAG:Ljava/lang/String;

    const-string v5, "parsing error, ignore updating"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :goto_0
    return-void

    .line 582
    :cond_0
    sget-object v4, Lcom/android/settings/framework/app/HtcPhoneService;->mCmdParser:Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;

    invoke-virtual {v4}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->getCallTimer()J

    move-result-wide v4

    sput-wide v4, Lcom/android/settings/framework/app/HtcPhoneService;->mLifeCallTimer:J

    .line 583
    sget-object v4, Lcom/android/settings/framework/app/HtcPhoneService;->mCmdParser:Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;

    invoke-virtual {v4}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->getCallCounter()J

    move-result-wide v4

    sput-wide v4, Lcom/android/settings/framework/app/HtcPhoneService;->mLifeCallCounter:J

    .line 588
    sget-wide v4, Lcom/android/settings/framework/app/HtcPhoneService;->mLifeCallCounter:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 594
    .local v1, summary:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    sget-object v4, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 595
    .local v0, intent:Landroid/content/Intent;
    sget-object v4, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_TASK_INDEX_NAME:Ljava/lang/String;

    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_LIFE_TIME_TOTAL_CALL:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    invoke-virtual {v5}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->getIndex()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 597
    const-string v4, "com.htc.intent.EXTRA_SUMMARY"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 601
    sget-wide v4, Lcom/android/settings/framework/app/HtcPhoneService;->mLifeCallTimer:J

    const-wide/16 v6, 0x3c

    div-long v2, v4, v6

    .line 603
    .local v2, timerByMinutes:J
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 607
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    sget-object v4, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 608
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v4, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_TASK_INDEX_NAME:Ljava/lang/String;

    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_LIFE_TIME_TOTAL_MINS:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    invoke-virtual {v5}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->getIndex()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 610
    const-string v4, "com.htc.intent.EXTRA_SUMMARY"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static updateLifeStatistics2(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const-wide/16 v6, 0x400

    .line 616
    sget-object v4, Lcom/android/settings/framework/app/HtcPhoneService;->TAG:Ljava/lang/String;

    const-string v5, "updateLifeStatistics2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    sget-object v4, Lcom/android/settings/framework/app/HtcPhoneService;->mCmdParser:Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;

    invoke-virtual {v4}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->getParseResult()Z

    move-result v4

    if-nez v4, :cond_0

    .line 619
    sget-object v4, Lcom/android/settings/framework/app/HtcPhoneService;->TAG:Ljava/lang/String;

    const-string v5, "parsing error, ignore updating"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :goto_0
    return-void

    .line 622
    :cond_0
    sget-object v4, Lcom/android/settings/framework/app/HtcPhoneService;->mCmdParser:Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;

    invoke-virtual {v4}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->getDataRx()J

    move-result-wide v4

    sput-wide v4, Lcom/android/settings/framework/app/HtcPhoneService;->mLifeDataRX:J

    .line 623
    sget-object v4, Lcom/android/settings/framework/app/HtcPhoneService;->mCmdParser:Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;

    invoke-virtual {v4}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->getDataTx()J

    move-result-wide v4

    sput-wide v4, Lcom/android/settings/framework/app/HtcPhoneService;->mLifeDataTX:J

    .line 627
    sget-wide v4, Lcom/android/settings/framework/app/HtcPhoneService;->mLifeDataRX:J

    div-long v0, v4, v6

    .line 629
    .local v0, dataLenByKB:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " KB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 633
    .local v3, summary:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    sget-object v4, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 634
    .local v2, intent:Landroid/content/Intent;
    sget-object v4, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_TASK_INDEX_NAME:Ljava/lang/String;

    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_LIFE_TIME_TOTAL_DATA_RX:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    invoke-virtual {v5}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->getIndex()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 636
    const-string v4, "com.htc.intent.EXTRA_SUMMARY"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 637
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 640
    sget-wide v4, Lcom/android/settings/framework/app/HtcPhoneService;->mLifeDataTX:J

    div-long v0, v4, v6

    .line 642
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " KB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 646
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    sget-object v4, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 647
    .restart local v2       #intent:Landroid/content/Intent;
    sget-object v4, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_TASK_INDEX_NAME:Ljava/lang/String;

    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_LIFE_TIME_TOTAL_DATA_TX:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    invoke-virtual {v5}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->getIndex()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 649
    const-string v4, "com.htc.intent.EXTRA_SUMMARY"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 650
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static validateStateOfNv(Ljava/lang/String;)I
    .locals 6
    .parameter "command"

    .prologue
    .line 504
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, errState:Ljava/lang/String;
    const-string v0, ""

    .line 506
    .local v0, errMsg:Ljava/lang/String;
    const/4 v2, -0x1

    .line 507
    .local v2, state:I
    const-string v3, "0000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 508
    const/4 v2, 0x0

    .line 509
    const-string v0, ""

    .line 535
    :goto_0
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 536
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

    .line 538
    :cond_0
    return v2

    .line 510
    :cond_1
    const-string v3, "0100"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 511
    const/4 v2, 0x1

    .line 512
    const-string v0, "internal dmss used"

    goto :goto_0

    .line 513
    :cond_2
    const-string v3, "0200"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 514
    const/4 v2, 0x1

    .line 515
    const-string v0, "can\'t recognize command"

    goto :goto_0

    .line 516
    :cond_3
    const-string v3, "0300"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 517
    const/4 v2, 0x1

    .line 518
    const-string v0, "memory is full"

    goto :goto_0

    .line 519
    :cond_4
    const-string v3, "0400"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 520
    const/4 v2, 0x1

    .line 521
    const-string v0, "command is fail"

    goto :goto_0

    .line 522
    :cond_5
    const-string v3, "0500"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 523
    const/4 v2, 0x2

    .line 524
    const-string v0, "not support this command"

    goto :goto_0

    .line 525
    :cond_6
    const-string v3, "0600"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 526
    const/4 v2, 0x2

    .line 527
    const-string v0, "bad command parameters or not exists"

    goto :goto_0

    .line 528
    :cond_7
    const-string v3, "0700"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 529
    const/4 v2, 0x1

    .line 530
    const-string v0, "memeory is read only"

    goto :goto_0

    .line 532
    :cond_8
    const/4 v2, 0x1

    .line 533
    const-string v0, "command error with non-knowing reason"

    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    const v10, 0x7f0c09f5

    const v9, 0x7f0c075e

    const/4 v8, 0x0

    .line 137
    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_TASK_INDEX_NAME:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 138
    .local v0, index:I
    invoke-static {v0}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->getPhoneTask(I)Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    move-result-object v2

    .line 140
    .local v2, phoneTask:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;
    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PhoneTask: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService$1;->$SwitchMap$com$android$settings$framework$app$HtcPhoneService$PhoneTask:[I

    invoke-virtual {v2}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 306
    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :goto_0
    return-void

    .line 147
    :pswitch_0
    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->TAG:Ljava/lang/String;

    const-string v6, "CDMA_LIFE_TIME_TOTAL_CALLS_INDEX"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcPhoneService;->ensurePhoneObject()V

    .line 149
    new-instance v5, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;

    invoke-direct {v5, v8}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;-><init>(Lcom/android/settings/framework/app/HtcPhoneService$1;)V

    sput-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->mCmdParser:Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;

    .line 151
    const-string v5, "C8F81A0000"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/app/HtcPhoneService;->sendDMCommand(Ljava/lang/String;)V

    .line 152
    const-string v5, "C8F81B0000"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/app/HtcPhoneService;->sendDMCommand(Ljava/lang/String;)V

    .line 153
    const-string v5, "C8F81C0000"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/app/HtcPhoneService;->sendDMCommand(Ljava/lang/String;)V

    .line 154
    const-string v5, "C8F81D0000"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/app/HtcPhoneService;->sendDMCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :pswitch_1
    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->TAG:Ljava/lang/String;

    const-string v6, "CDMA_LIFE_TIME_TOTAL_MINS_INDEX"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcPhoneService;->ensurePhoneObject()V

    .line 162
    new-instance v5, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;

    invoke-direct {v5, v8}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;-><init>(Lcom/android/settings/framework/app/HtcPhoneService$1;)V

    sput-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->mCmdParser:Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;

    .line 164
    const-string v5, "C8F81A0000"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/app/HtcPhoneService;->sendDMCommand(Ljava/lang/String;)V

    .line 165
    const-string v5, "C8F81B0000"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/app/HtcPhoneService;->sendDMCommand(Ljava/lang/String;)V

    .line 166
    const-string v5, "C8F81C0000"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/app/HtcPhoneService;->sendDMCommand(Ljava/lang/String;)V

    .line 167
    const-string v5, "C8F81D0000"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/app/HtcPhoneService;->sendDMCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :pswitch_2
    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->TAG:Ljava/lang/String;

    const-string v6, "CDMA_LIFE_TIME_TOTAL_CALLS_INDEX"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcPhoneService;->ensurePhoneObject()V

    .line 175
    new-instance v5, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;

    invoke-direct {v5, v8}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;-><init>(Lcom/android/settings/framework/app/HtcPhoneService$1;)V

    sput-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->mCmdParser:Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;

    .line 177
    const-string v5, "C8F81E0000"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/app/HtcPhoneService;->sendDMCommand2(Ljava/lang/String;)V

    .line 182
    :pswitch_3
    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->TAG:Ljava/lang/String;

    const-string v6, "CDMA_LIFE_TIME_TOTAL_CALLS_INDEX"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcPhoneService;->ensurePhoneObject()V

    .line 184
    new-instance v5, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;

    invoke-direct {v5, v8}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;-><init>(Lcom/android/settings/framework/app/HtcPhoneService$1;)V

    sput-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->mCmdParser:Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;

    .line 186
    const-string v5, "C8F81E0000"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/app/HtcPhoneService;->sendDMCommand2(Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :pswitch_4
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcPhoneService;->ensurePhoneObject()V

    .line 200
    iget-object v5, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/HtcIfPhone;->getImei()Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, value:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 202
    invoke-virtual {p0, v9}, Lcom/android/settings/framework/app/HtcPhoneService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 206
    :cond_0
    new-instance v3, Landroid/content/Intent;

    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v3, resultIntent:Landroid/content/Intent;
    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_TASK_INDEX_NAME:Ljava/lang/String;

    sget-object v6, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_IMEI:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    invoke-virtual {v6}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->getIndex()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 208
    const-string v5, "com.htc.intent.EXTRA_SUMMARY"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/app/HtcPhoneService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 215
    .end local v3           #resultIntent:Landroid/content/Intent;
    .end local v4           #value:Ljava/lang/String;
    :pswitch_5
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcPhoneService;->ensurePhoneObject()V

    .line 217
    iget-object v5, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/HtcIfPhone;->getImeiSv()Ljava/lang/String;

    move-result-object v4

    .line 218
    .restart local v4       #value:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 219
    invoke-virtual {p0, v9}, Lcom/android/settings/framework/app/HtcPhoneService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 222
    :cond_1
    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OoO Try to get CDMA_SV("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    new-instance v3, Landroid/content/Intent;

    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    .restart local v3       #resultIntent:Landroid/content/Intent;
    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_TASK_INDEX_NAME:Ljava/lang/String;

    sget-object v6, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_IMEI_SV:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    invoke-virtual {v6}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->getIndex()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 225
    const-string v5, "com.htc.intent.EXTRA_SUMMARY"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/app/HtcPhoneService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 234
    .end local v3           #resultIntent:Landroid/content/Intent;
    .end local v4           #value:Ljava/lang/String;
    :pswitch_6
    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->TAG:Ljava/lang/String;

    const-string v6, "CDMA_ERI_INDEX"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcPhoneService;->ensurePhoneObject()V

    .line 236
    iget-object v5, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3e9

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 237
    .local v1, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/settings/framework/app/HtcPhoneService;->key:Ljava/lang/String;

    iput-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 238
    iget-object v5, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v6, "C85904000A4552492f303030303400"

    invoke-interface {v5, v6, v1}, Lcom/android/internal/telephony/HtcIfPhone;->requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 245
    .end local v1           #msg:Landroid/os/Message;
    :pswitch_7
    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->TAG:Ljava/lang/String;

    const-string v6, "CDMA_NAI_INDEX"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcPhoneService;->ensurePhoneObject()V

    .line 247
    iget-object v5, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x384

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 248
    .restart local v1       #msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/settings/framework/app/HtcPhoneService;->key:Ljava/lang/String;

    iput-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 249
    iget-object v5, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v6, "C826D10101"

    invoke-interface {v5, v6, v1}, Lcom/android/internal/telephony/HtcIfPhone;->requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 255
    .end local v1           #msg:Landroid/os/Message;
    :pswitch_8
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcPhoneService;->ensurePhoneObject()V

    .line 257
    iget-object v5, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/HtcIfPhone;->getPRIVersion()Ljava/lang/String;

    move-result-object v4

    .line 258
    .restart local v4       #value:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 259
    invoke-virtual {p0, v10}, Lcom/android/settings/framework/app/HtcPhoneService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 262
    :cond_2
    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OoO CDMA_PRI("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    new-instance v3, Landroid/content/Intent;

    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    .restart local v3       #resultIntent:Landroid/content/Intent;
    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_TASK_INDEX_NAME:Ljava/lang/String;

    sget-object v6, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_PRI:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    invoke-virtual {v6}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->getIndex()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    const-string v5, "com.htc.intent.EXTRA_SUMMARY"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/app/HtcPhoneService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 272
    .end local v3           #resultIntent:Landroid/content/Intent;
    .end local v4           #value:Ljava/lang/String;
    :pswitch_9
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcPhoneService;->ensurePhoneObject()V

    .line 274
    iget-object v5, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v4

    .line 275
    .restart local v4       #value:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 276
    invoke-virtual {p0, v10}, Lcom/android/settings/framework/app/HtcPhoneService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 278
    :cond_3
    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OoO CDMA_PRL("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    new-instance v3, Landroid/content/Intent;

    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .restart local v3       #resultIntent:Landroid/content/Intent;
    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_TASK_INDEX_NAME:Ljava/lang/String;

    sget-object v6, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_PRL:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    invoke-virtual {v6}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->getIndex()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    const-string v5, "com.htc.intent.EXTRA_SUMMARY"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/app/HtcPhoneService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 289
    .end local v3           #resultIntent:Landroid/content/Intent;
    .end local v4           #value:Ljava/lang/String;
    :pswitch_a
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcPhoneService;->ensurePhoneObject()V

    .line 290
    iget-object v5, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v4

    .line 291
    .restart local v4       #value:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 292
    invoke-virtual {p0, v9}, Lcom/android/settings/framework/app/HtcPhoneService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 297
    :cond_4
    new-instance v3, Landroid/content/Intent;

    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    .restart local v3       #resultIntent:Landroid/content/Intent;
    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_TASK_INDEX_NAME:Ljava/lang/String;

    sget-object v6, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_ICC:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    invoke-virtual {v6}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->getIndex()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 299
    const-string v5, "com.htc.intent.EXTRA_SUMMARY"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/app/HtcPhoneService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
