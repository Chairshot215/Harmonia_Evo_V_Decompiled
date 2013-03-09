.class public Lcom/htc/android/epst/internal/DataObject;
.super Ljava/lang/Object;
.source "DataObject.java"


# static fields
.field private static final BAD_CODE_LENGTH:I = 0x4

.field public static final COMMAND_LPM_TIMEOUT_SEC:I = 0x3c

.field public static final COMMAND_TIMEOUT_SEC:I = 0x1e

.field private static DBG:Z = false

.field public static final DIRECTLY_REBOOT:I = 0x96

.field private static final DISPLACEMENT:I = 0x1f40

.field private static final D_PASSWORD_REQUESST_ERROR:Ljava/lang/String; = "unexpected password "

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final ERR_BAD_COMMAND:Ljava/lang/String; = "C813"

.field private static final ERR_BAD_LENGTH:Ljava/lang/String; = "C815"

.field private static final ERR_BAD_NOT_AT:Ljava/lang/String; = "C8"

.field private static final ERR_BAD_PARAMETERS:Ljava/lang/String; = "C814"

.field private static final ERR_BAD_SECURITY_MODE:Ljava/lang/String; = "C847"

.field private static final ERR_BAD_SPC_MODE:Ljava/lang/String; = "C842"

.field private static final ERR_BAD_USER_LENGTH:Ljava/lang/String; = "U01"

.field private static final ERR_CODE_LENGTH:I = 0x4

.field public static final ERR_NO_RESPONSE:Ljava/lang/String; = "FFFF"

.field private static final ERR_NV_CMD_FAILED:Ljava/lang/String; = "0400"

.field private static final ERR_NV_INTERNAL_DMSS_USE:Ljava/lang/String; = "0100"

.field private static final ERR_NV_LENGTH:I = 0x4

.field private static final ERR_NV_MEMORY_FULL:Ljava/lang/String; = "0300"

.field private static final ERR_NV_NOT_EXIST_OR_BAD_PARAMS:Ljava/lang/String; = "0600"

.field private static final ERR_NV_NOT_RECOGN_CMD:Ljava/lang/String; = "0200"

.field private static final ERR_NV_NOT_SUPPORT:Ljava/lang/String; = "0500"

.field private static final ERR_NV_READ_ONLY:Ljava/lang/String; = "0700"

.field public static final EVENT_CLEAR_REBURBISH_DATE_TIMEOUT:I = 0x3a

.field public static final EVENT_CLEAR_REBURBISH_STATUS_TIMEOUT:I = 0x3b

.field public static final EVENT_HTC_CDMA_REBOOT_TIMEOUT:I = 0x75

.field public static final EVENT_LPM_TIMEOUT:I = 0x34

.field public static final EVENT_NONE_RESPONSE:I = 0x3e7

.field public static final EVENT_READ_TIMEOUT:I = 0x32

.field public static final EVENT_REFURBISH_TIMEOUT:I = 0x35

.field public static final EVENT_RESTORE_NAI_TIMEOUT:I = 0x36

.field public static final EVENT_RESTORE_SSL_TIMEOUT:I = 0x37

.field public static final EVENT_RESTORE_USER_TIMEOUT:I = 0x38

.field public static final EVENT_RIL_DM_CMD_READ:I = 0x2711

.field public static final EVENT_RIL_DM_CMD_WRITE:I = 0x2712

.field public static final EVENT_RIL_REQUEST_CLEAR_GPS:I = 0x6d

.field public static final EVENT_RIL_REQUEST_NORMAL_OFFLINE_MODE:I = 0x97

.field public static final EVENT_RIL_REQUEST_OTKSL:I = 0x6e

.field public static final EVENT_RIL_REQUEST_PASSWORD:I = 0x64

.field public static final EVENT_RIL_REQUEST_RADIO_POWER_SAVE_MODE:I = 0x69

.field public static final EVENT_RIL_REQUEST_RADIO_RESET_MODE:I = 0x6a

.field public static final EVENT_RIL_REQUEST_READ_INDEXTYPE:I = 0x66

.field public static final EVENT_RIL_REQUEST_READ_STRINGTYPE:I = 0x65

.field public static final EVENT_RIL_REQUEST_REFURBISH_OFFLINE_MODE:I = 0x99

.field public static final EVENT_RIL_REQUEST_REFURBISH_RADIO_POWER_SAVE_MODE:I = 0x6f

.field public static final EVENT_RIL_REQUEST_REFURBISH_RADIO_REFURBISH:I = 0x70

.field public static final EVENT_RIL_REQUEST_RESATORE_ACTIVITYUSER_1:I = 0x74

.field public static final EVENT_RIL_REQUEST_RESATORE_NAI_1:I = 0x72

.field public static final EVENT_RIL_REQUEST_RESATORE_SSLONG_1:I = 0x73

.field public static final EVENT_RIL_REQUEST_RESTORE_OFFLINE_MODE:I = 0x98

.field public static final EVENT_RIL_REQUEST_RESTORE_RADIO_POWER_SAVE_MODE:I = 0x71

.field public static final EVENT_RIL_REQUEST_SCRTN_COMMAND:I = 0x9b

.field public static final EVENT_RIL_REQUEST_SCRTN_OFFLINE_MODE:I = 0x9a

.field public static final EVENT_RIL_REQUEST_WRITE_INDEXTYPE:I = 0x68

.field public static final EVENT_RIL_REQUEST_WRITE_STRINGTYPE:I = 0x67

.field public static final EVENT_SCRTN_TIMEOUT:I = 0x39

.field public static final EVENT_WRITE_TIMEOUT:I = 0x33

.field private static final ID_CMD_CLEAR_GPS:Ljava/lang/String; = "E501"

.field private static final ID_CMD_MSL:Ljava/lang/String; = "41"

.field private static final ID_CMD_OTKSL:Ljava/lang/String; = "D9"

.field private static final ID_CMD_PREFIX:Ljava/lang/String; = "C8"

.field private static final LOG_TAG:Ljava/lang/String; = "DataObject"

.field public static final NORMAL_OFFLINE_MODE:I = 0x97

.field public static final NORMAL_TIMEOUT_SEC:I = 0xa

.field public static final NVOPERATORID:Ljava/lang/String; = "C8F8000000"

.field private static final NV_SUCCESS:Ljava/lang/String; = "0000"

.field public static final RADIO_OFF:I = 0x6b

.field public static final RADIO_POWERSAVE:I = 0x69

.field public static final RADIO_RESET:I = 0x6a

.field public static final REBOOT:I = 0x6c

.field public static final REFURBISH_OFFLINE_MODE:I = 0x99

.field public static final REFURBISH_RADIO_POWERSAVE:I = 0x6f

.field public static final REFURBISH_RADIO_REFURBISH:I = 0x70

.field public static final RESET_REBURFISH_DATE_COMMAND:I = 0x9c

.field public static final RESET_REBURFISH_STATUS_COMMAND:I = 0x9d

.field public static final RESTORE_OFFLINE_MODE:I = 0x98

.field public static final RESTORE_RADIO_NAI:I = 0x72

.field public static final RESTORE_RADIO_POWERSAVE:I = 0x71

.field private static final RESULT_MSL_CORRECT:Ljava/lang/String; = "01"

.field private static final RESULT_OTKSL_CORRECT:Ljava/lang/String; = "01"

.field public static final SCRTN_COMMAND:I = 0x9b

.field public static final SCRTN_OFFLINE_MODE:I = 0x9a

.field public static final SSL_COMMAND:I = 0x9e

.field public static final STATE_NEED_WRITE:I = 0x4

.field public static final STATE_NOT_SEND:I = 0x3

.field public static final STATE_SEND_ALREADY_AND_FAILED:I = 0x1

.field public static final STATE_SEND_ALREADY_AND_NOT_SUPPORT:I = 0x2

.field public static final STATE_SEND_ALREADY_AND_SUCCESS:I = 0x0

.field public static final STATUS_NO_RESPONSE:I = 0x5

.field public static final TYPE_DMCMD:I = 0x1

.field public static final TYPE_NVITEM:I = 0x0

.field static final clearRefDate:Ljava/lang/String; = "C827531F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"

.field static final clearRefStatus:Ljava/lang/String; = "C827431F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"

.field public static executeCMDType:I = 0x0

.field static final lowPowerMode:Ljava/lang/String; = "C8290500"

.field private static mCommandHandler:Lcom/htc/android/epst/internal/DataObjectHandler; = null

.field private static mDmController:Lcom/htc/android/epst/dmcmd/DmCmdController; = null

.field private static mNewInstance:Lcom/htc/android/epst/internal/DataObject; = null

.field private static mNvController:Lcom/htc/android/epst/nvitem/NvItemController; = null

.field private static mRecordList:Lcom/htc/android/epst/internal/RecordList; = null

.field static final offlineMode:Ljava/lang/String; = "C8290100"

.field static final refurbishMode:Ljava/lang/String; = "C8C901"

.field static final resetActivityUsercommand:Ljava/lang/String; = "C827D00100"

.field static final resetMode:Ljava/lang/String; = "C8290200"

.field static final resetNAIcommand:Ljava/lang/String; = "C827D10101000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"

.field static final resetSSLONGcommand:Ljava/lang/String; = "C827551F01000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"

.field static final scrtncommand:Ljava/lang/String; = "C8C912"


# instance fields
.field private final GPS_CLEAR_LENGTH:I

.field private bClearARM11:Z

.field private bExecuteCmd:Z

.field private mBaseStructList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/epst/internal/StructBase;",
            ">;"
        }
    .end annotation
.end field

.field private mCount:I

.field private mFailedWriteCommand:I

.field private mNvitemId:I

.field private mParser:Lcom/htc/android/epst/internal/CmdParser;

.field private mSendList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/epst/internal/Record;",
            ">;"
        }
    .end annotation
.end field

.field private mSuccessWriteCommand:I

.field private mWriteCmdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/htc/android/epst/internal/Record;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    sput-boolean v0, Lcom/htc/android/epst/internal/DataObject;->DBG:Z

    .line 37
    new-instance v0, Lcom/htc/android/epst/internal/DataObjectHandler;

    invoke-direct {v0}, Lcom/htc/android/epst/internal/DataObjectHandler;-><init>()V

    sput-object v0, Lcom/htc/android/epst/internal/DataObject;->mCommandHandler:Lcom/htc/android/epst/internal/DataObjectHandler;

    .line 148
    invoke-static {}, Lcom/htc/android/epst/internal/RecordList;->getSingleton()Lcom/htc/android/epst/internal/RecordList;

    move-result-object v0

    sput-object v0, Lcom/htc/android/epst/internal/DataObject;->mRecordList:Lcom/htc/android/epst/internal/RecordList;

    .line 164
    const/4 v0, -0x1

    sput v0, Lcom/htc/android/epst/internal/DataObject;->executeCMDType:I

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/16 v1, 0x10

    iput v1, p0, Lcom/htc/android/epst/internal/DataObject;->GPS_CLEAR_LENGTH:I

    .line 158
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/android/epst/internal/DataObject;->mBaseStructList:Ljava/util/ArrayList;

    .line 159
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/htc/android/epst/internal/DataObject;->mWriteCmdMap:Ljava/util/HashMap;

    .line 160
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/android/epst/internal/DataObject;->mSendList:Ljava/util/ArrayList;

    .line 162
    iput v2, p0, Lcom/htc/android/epst/internal/DataObject;->mCount:I

    .line 165
    iput-boolean v2, p0, Lcom/htc/android/epst/internal/DataObject;->bExecuteCmd:Z

    .line 166
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/epst/internal/DataObject;->bClearARM11:Z

    .line 170
    :try_start_0
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/internal/DataObject;->mParser:Lcom/htc/android/epst/internal/CmdParser;

    .line 171
    new-instance v1, Lcom/htc/android/epst/internal/StructInitializer;

    invoke-direct {v1}, Lcom/htc/android/epst/internal/StructInitializer;-><init>()V

    .line 172
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v1

    sput-object v1, Lcom/htc/android/epst/internal/DataObject;->mNvController:Lcom/htc/android/epst/nvitem/NvItemController;

    .line 173
    invoke-static {}, Lcom/htc/android/epst/dmcmd/DmCmdController;->getSingleton()Lcom/htc/android/epst/dmcmd/DmCmdController;

    move-result-object v1

    sput-object v1, Lcom/htc/android/epst/internal/DataObject;->mDmController:Lcom/htc/android/epst/dmcmd/DmCmdController;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, ex:Ljava/lang/Exception;
    sget-boolean v1, Lcom/htc/android/epst/internal/DataObject;->DBG:Z

    if-eqz v1, :cond_0

    .line 182
    const-string v1, "DataObject"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addToSendList(Lcom/htc/android/epst/internal/Record;)V
    .locals 3
    .parameter "record"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/htc/android/epst/internal/DataObject;->mSendList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 367
    sget-boolean v0, Lcom/htc/android/epst/internal/DataObject;->DBG:Z

    if-eqz v0, :cond_0

    .line 368
    const-string v0, "DataObject"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add nvitemrecord "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/android/epst/internal/Record;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " into preprocess map"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/htc/android/epst/internal/DataObject;->mSendList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    :cond_1
    :goto_0
    return-void

    .line 372
    :cond_2
    sget-boolean v0, Lcom/htc/android/epst/internal/DataObject;->DBG:Z

    if-eqz v0, :cond_1

    .line 373
    const-string v0, "DataObject"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "struct "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/android/epst/internal/Record;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already add into preprocess map"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkReceivedIsOver()V
    .locals 3

    .prologue
    .line 600
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    .line 601
    .local v0, port:Lcom/htc/android/epst/Port;
    iget-object v1, p0, Lcom/htc/android/epst/internal/DataObject;->mWriteCmdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 602
    sget-boolean v1, Lcom/htc/android/epst/internal/DataObject;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "DataObject"

    const-string v2, "mWriteCmdMap.isEmpty"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_0
    sget-object v1, Lcom/htc/android/epst/internal/DataObject;->mCommandHandler:Lcom/htc/android/epst/internal/DataObjectHandler;

    invoke-virtual {v1}, Lcom/htc/android/epst/internal/DataObjectHandler;->close()V

    .line 604
    invoke-virtual {v0}, Lcom/htc/android/epst/Port;->clearStorage()V

    .line 605
    sget-object v1, Lcom/htc/android/epst/internal/DataObject;->mDmController:Lcom/htc/android/epst/dmcmd/DmCmdController;

    invoke-virtual {v1}, Lcom/htc/android/epst/dmcmd/DmCmdController;->clear()V

    .line 606
    sget-object v1, Lcom/htc/android/epst/internal/DataObject;->mNvController:Lcom/htc/android/epst/nvitem/NvItemController;

    invoke-virtual {v1}, Lcom/htc/android/epst/nvitem/NvItemController;->clear()V

    .line 607
    iget v1, p0, Lcom/htc/android/epst/internal/DataObject;->mSuccessWriteCommand:I

    iget v2, p0, Lcom/htc/android/epst/internal/DataObject;->mFailedWriteCommand:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/epst/Port;->returnCommit(II)V

    .line 608
    sget-object v1, Lcom/htc/android/epst/internal/DataObject;->mCommandHandler:Lcom/htc/android/epst/internal/DataObjectHandler;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/internal/DataObjectHandler;->radioMode(I)V

    .line 610
    :cond_1
    return-void
.end method

.method private clearWiMaxColdBoot()V
    .locals 4

    .prologue
    .line 790
    invoke-static {}, Lcom/htc/android/epst/wimax/WiMaxRefurbish;->exeRefurbish()V

    .line 791
    invoke-static {}, Lcom/htc/android/epst/wimax/WiMaxController;->getSingleton()Lcom/htc/android/epst/wimax/WiMaxController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/epst/wimax/WiMaxController;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 793
    invoke-static {}, Lcom/htc/android/epst/wimax/WiMaxController;->getSingleton()Lcom/htc/android/epst/wimax/WiMaxController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/epst/wimax/WiMaxController;->isCommit()Z

    move-result v0

    .line 794
    .local v0, bResult:Z
    if-nez v0, :cond_0

    .line 795
    const-string v1, "DataObject"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WiMaxController commit result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    .end local v0           #bResult:Z
    :cond_0
    return-void
.end method

.method public static getSingleton()Lcom/htc/android/epst/internal/DataObject;
    .locals 1

    .prologue
    .line 274
    sget-object v0, Lcom/htc/android/epst/internal/DataObject;->mNewInstance:Lcom/htc/android/epst/internal/DataObject;

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Lcom/htc/android/epst/internal/DataObject;

    invoke-direct {v0}, Lcom/htc/android/epst/internal/DataObject;-><init>()V

    sput-object v0, Lcom/htc/android/epst/internal/DataObject;->mNewInstance:Lcom/htc/android/epst/internal/DataObject;

    .line 276
    :cond_0
    sget-object v0, Lcom/htc/android/epst/internal/DataObject;->mNewInstance:Lcom/htc/android/epst/internal/DataObject;

    return-object v0
.end method

.method private validateCommand(Ljava/lang/String;)Z
    .locals 8
    .parameter "command"

    .prologue
    const/4 v7, 0x4

    const/4 v3, 0x0

    .line 413
    const-string v2, ""

    .line 414
    .local v2, errMsg:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v7, :cond_0

    .line 415
    const-string v4, "DataObject"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCommandLegal.command length is not enough:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const-string v2, "U01"

    .line 439
    :goto_0
    return v3

    .line 419
    :cond_0
    invoke-virtual {p1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, errCode:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, errCode2:Ljava/lang/String;
    const-string v4, "C8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 422
    const-string v4, "DataObject"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCommandLegal.Not AT-DM command:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const-string v2, "Not AT-DM command!!"

    .line 435
    :cond_1
    :goto_1
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 436
    const-string v4, "DataObject"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "received command error, reason is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "and the orginal message is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 424
    :cond_2
    const-string v4, "C813"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 425
    const-string v2, "bad command"

    goto :goto_1

    .line 426
    :cond_3
    const-string v4, "C814"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 427
    const-string v2, "bad parameters"

    goto :goto_1

    .line 428
    :cond_4
    const-string v4, "C815"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 429
    const-string v2, "bad code length"

    goto :goto_1

    .line 430
    :cond_5
    const-string v4, "C842"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 431
    const-string v2, "bad spc mode"

    goto :goto_1

    .line 432
    :cond_6
    const-string v4, "C847"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 433
    const-string v2, "bad security mode"

    goto :goto_1

    .line 439
    :cond_7
    const/4 v3, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public checkSendStatusGeneric(III)I
    .locals 5
    .parameter "cmdid"
    .parameter "nvitemid"
    .parameter "index"

    .prologue
    const/4 v3, 0x1

    .line 323
    const/4 v1, -0x1

    .line 324
    .local v1, status:I
    sget-object v2, Lcom/htc/android/epst/internal/DataObject;->mRecordList:Lcom/htc/android/epst/internal/RecordList;

    invoke-virtual {v2, p1, p2, p3}, Lcom/htc/android/epst/internal/RecordList;->getByIdandIndex(III)Lcom/htc/android/epst/internal/Record;

    move-result-object v0

    .line 326
    .local v0, nvItemRecord:Lcom/htc/android/epst/internal/Record;
    if-eqz v0, :cond_1

    .line 327
    iget-boolean v2, v0, Lcom/htc/android/epst/internal/Record;->isSend:Z

    if-ne v2, v3, :cond_5

    .line 328
    iget v2, v0, Lcom/htc/android/epst/internal/Record;->failedstate:I

    if-ne v2, v3, :cond_2

    .line 330
    sget-boolean v2, Lcom/htc/android/epst/internal/DataObject;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "DataObject"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "command is in failed list, item id is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_0
    const/4 v1, 0x1

    .line 348
    :cond_1
    :goto_0
    return v1

    .line 333
    :cond_2
    iget v2, v0, Lcom/htc/android/epst/internal/Record;->failedstate:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 335
    const/4 v1, 0x2

    goto :goto_0

    .line 337
    :cond_3
    iget v2, v0, Lcom/htc/android/epst/internal/Record;->failedstate:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 339
    const/4 v1, 0x5

    goto :goto_0

    .line 342
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 345
    :cond_5
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 734
    sget-object v0, Lcom/htc/android/epst/internal/DataObject;->mCommandHandler:Lcom/htc/android/epst/internal/DataObjectHandler;

    iput-boolean v1, v0, Lcom/htc/android/epst/internal/DataObjectHandler;->writeTitle:Z

    .line 735
    iget-object v0, p0, Lcom/htc/android/epst/internal/DataObject;->mSendList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/htc/android/epst/internal/DataObject;->mSendList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/htc/android/epst/internal/DataObject;->mBaseStructList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 739
    iget-object v0, p0, Lcom/htc/android/epst/internal/DataObject;->mBaseStructList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 741
    :cond_1
    iget-object v0, p0, Lcom/htc/android/epst/internal/DataObject;->mWriteCmdMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 742
    iget-object v0, p0, Lcom/htc/android/epst/internal/DataObject;->mWriteCmdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 744
    :cond_2
    iput v1, p0, Lcom/htc/android/epst/internal/DataObject;->mCount:I

    .line 745
    return-void
.end method

.method public clearARM11()Z
    .locals 1

    .prologue
    .line 801
    iget-boolean v0, p0, Lcom/htc/android/epst/internal/DataObject;->bClearARM11:Z

    return v0
.end method

.method public clearGPS()V
    .locals 5

    .prologue
    .line 708
    const-string v0, "C8E501"

    .line 709
    .local v0, command:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 710
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 709
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 712
    :cond_0
    sget-object v2, Lcom/htc/android/epst/internal/DataObject;->mCommandHandler:Lcom/htc/android/epst/internal/DataObjectHandler;

    sget-object v3, Lcom/htc/android/epst/internal/DataObject;->mCommandHandler:Lcom/htc/android/epst/internal/DataObjectHandler;

    const/16 v4, 0x6d

    invoke-virtual {v2, v3, v4, v0}, Lcom/htc/android/epst/internal/DataObjectHandler;->sendCmd(Landroid/os/Handler;ILjava/lang/String;)V

    .line 714
    return-void
.end method

.method clearGPSResult(ZLjava/lang/String;)V
    .locals 3
    .parameter "result"
    .parameter "command"

    .prologue
    const/4 v2, 0x0

    .line 717
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    .line 718
    .local v0, port:Lcom/htc/android/epst/Port;
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 719
    const-string v1, "C8E501"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 720
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/Port;->updateClearGPSResult(Z)V

    .line 727
    :goto_0
    return-void

    .line 722
    :cond_0
    invoke-virtual {v0, v2}, Lcom/htc/android/epst/Port;->updateClearGPSResult(Z)V

    goto :goto_0

    .line 726
    :cond_1
    invoke-virtual {v0, v2}, Lcom/htc/android/epst/Port;->updateClearGPSResult(Z)V

    goto :goto_0
.end method

.method public clearReburbishDateCmd()V
    .locals 2

    .prologue
    .line 805
    sget-object v0, Lcom/htc/android/epst/internal/DataObject;->mCommandHandler:Lcom/htc/android/epst/internal/DataObjectHandler;

    const/16 v1, 0x9c

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/internal/DataObjectHandler;->radioMode(I)V

    .line 806
    return-void
.end method

.method public clearReburbishStatusCmd()V
    .locals 2

    .prologue
    .line 809
    sget-object v0, Lcom/htc/android/epst/internal/DataObject;->mCommandHandler:Lcom/htc/android/epst/internal/DataObjectHandler;

    const/16 v1, 0x9d

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/internal/DataObjectHandler;->radioMode(I)V

    .line 810
    return-void
.end method

.method public commit()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 280
    sget-boolean v1, Lcom/htc/android/epst/internal/DataObject;->DBG:Z

    if-eqz v1, :cond_0

    .line 281
    const-string v1, "DataObject"

    const-string v2, "commit write command"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/htc/android/epst/internal/DataObject;->mSendList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/htc/android/epst/wimax/WiMaxController;->getSingleton()Lcom/htc/android/epst/wimax/WiMaxController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/epst/wimax/WiMaxController;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lcom/htc/android/epst/Port;->returnCommit(II)V

    .line 305
    :goto_0
    return-void

    .line 286
    :cond_1
    invoke-static {}, Lcom/htc/android/epst/wimax/WiMaxController;->getSingleton()Lcom/htc/android/epst/wimax/WiMaxController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/epst/wimax/WiMaxController;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 288
    invoke-static {}, Lcom/htc/android/epst/wimax/WiMaxController;->getSingleton()Lcom/htc/android/epst/wimax/WiMaxController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/epst/wimax/WiMaxController;->isCommit()Z

    move-result v0

    .line 289
    .local v0, bResult:Z
    if-nez v0, :cond_2

    .line 290
    const-string v1, "DataObject"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WiMaxController commit result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    .end local v0           #bResult:Z
    :cond_2
    iget-object v1, p0, Lcom/htc/android/epst/internal/DataObject;->mSendList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 296
    sget-object v1, Lcom/htc/android/epst/internal/DataObject;->mCommandHandler:Lcom/htc/android/epst/internal/DataObjectHandler;

    const/16 v2, 0x97

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/internal/DataObjectHandler;->radioMode(I)V

    .line 297
    const-string v1, "DataObject"

    const-string v2, "write command to radio:NORMAL_OFFLINE_MODE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 300
    :cond_3
    sget-object v1, Lcom/htc/android/epst/internal/DataObject;->mCommandHandler:Lcom/htc/android/epst/internal/DataObjectHandler;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/internal/DataObjectHandler;->radioMode(I)V

    .line 301
    const-string v1, "DataObject"

    const-string v2, "reboot device"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method commitAction()V
    .locals 10

    .prologue
    .line 308
    iget-object v0, p0, Lcom/htc/android/epst/internal/DataObject;->mSendList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v8

    .line 309
    .local v8, itr:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/htc/android/epst/internal/Record;>;"
    :cond_0
    invoke-interface {v8}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 310
    invoke-interface {v8}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/android/epst/internal/Record;

    .line 311
    .local v9, record:Lcom/htc/android/epst/internal/Record;
    iget-object v0, v9, Lcom/htc/android/epst/internal/Record;->rule:Lcom/htc/android/epst/internal/IRule;

    iget v1, v9, Lcom/htc/android/epst/internal/Record;->dmCmdId:I

    iget v2, v9, Lcom/htc/android/epst/internal/Record;->nvitemId:I

    iget v3, v9, Lcom/htc/android/epst/internal/Record;->index:I

    iget-object v4, v9, Lcom/htc/android/epst/internal/Record;->request:Lcom/htc/android/epst/internal/StructBase;

    iget-object v5, v9, Lcom/htc/android/epst/internal/Record;->customAttr:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/htc/android/epst/internal/IRule;->onSendEditAction(IIILcom/htc/android/epst/internal/StructBase;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 313
    .local v6, commandList:[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v0, v6

    if-ge v7, v0, :cond_0

    .line 314
    sget-boolean v0, Lcom/htc/android/epst/internal/DataObject;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "DataObject"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current Thread id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_1
    sget-object v0, Lcom/htc/android/epst/internal/DataObject;->mCommandHandler:Lcom/htc/android/epst/internal/DataObjectHandler;

    iget v1, p0, Lcom/htc/android/epst/internal/DataObject;->mCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/android/epst/internal/DataObject;->mCount:I

    aget-object v2, v6, v7

    const/16 v3, 0x2712

    invoke-virtual {v0, v9, v1, v2, v3}, Lcom/htc/android/epst/internal/DataObjectHandler;->sendWriteCmd(Lcom/htc/android/epst/internal/Record;ILjava/lang/String;I)V

    .line 313
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 319
    .end local v6           #commandList:[Ljava/lang/String;
    .end local v7           #i:I
    .end local v9           #record:Lcom/htc/android/epst/internal/Record;
    :cond_2
    invoke-direct {p0}, Lcom/htc/android/epst/internal/DataObject;->checkReceivedIsOver()V

    .line 320
    return-void
.end method

.method public enterOTKSLPassWord(Ljava/lang/String;)V
    .locals 5
    .parameter "password"

    .prologue
    .line 669
    invoke-static {p1}, Lcom/htc/android/epst/Utility;->ASCIIToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 670
    .local v0, command:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1

    .line 671
    :cond_0
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/Port;->passWordResult(Z)V

    .line 678
    :goto_0
    return-void

    .line 673
    :cond_1
    const-string v1, "C8D9"

    .line 674
    .local v1, send:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 675
    sget-object v2, Lcom/htc/android/epst/internal/DataObject;->mCommandHandler:Lcom/htc/android/epst/internal/DataObjectHandler;

    sget-object v3, Lcom/htc/android/epst/internal/DataObject;->mCommandHandler:Lcom/htc/android/epst/internal/DataObjectHandler;

    const/16 v4, 0x6e

    invoke-virtual {v2, v3, v4, v1}, Lcom/htc/android/epst/internal/DataObjectHandler;->sendCmd(Landroid/os/Handler;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public executeCommands(I)V
    .locals 2
    .parameter "executeCMDType"

    .prologue
    .line 194
    sget-object v0, Lcom/htc/android/epst/internal/DataObject;->mCommandHandler:Lcom/htc/android/epst/internal/DataObjectHandler;

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/internal/DataObjectHandler;->removeTimeout(I)V

    .line 195
    const-string v0, "DataObject"

    const-string v1, "powerSaveModeListener.section.Remove LPM timeout!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/16 v0, 0x69

    if-ne p1, v0, :cond_1

    .line 198
    sget-boolean v0, Lcom/htc/android/epst/internal/DataObject;->DBG:Z

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "DataObject"

    const-string v1, "execute command EVENT_RIL_REQUEST_RADIO_POWER_SAVE_MODE after LPM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/epst/internal/DataObject;->commitAction()V

    .line 223
    :goto_0
    return-void

    .line 202
    :cond_1
    const/16 v0, 0x6f

    if-ne p1, v0, :cond_3

    .line 203
    sget-boolean v0, Lcom/htc/android/epst/internal/DataObject;->DBG:Z

    if-eqz v0, :cond_2

    .line 204
    const-string v0, "DataObject"

    const-string v1, "execute command EVENT_RIL_REQUEST_REFURBISH_RADIO_POWER_SAVE_MODE after LPM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/epst/internal/DataObject;->executeRefurbishCmd()V

    goto :goto_0

    .line 208
    :cond_3
    const/16 v0, 0x71

    if-ne p1, v0, :cond_5

    .line 209
    sget-boolean v0, Lcom/htc/android/epst/internal/DataObject;->DBG:Z

    if-eqz v0, :cond_4

    .line 210
    const-string v0, "DataObject"

    const-string v1, "execute command EVENT_RIL_REQUEST_RESTORE_RADIO_POWER_SAVE_MODE after LPM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_4
    invoke-virtual {p0}, Lcom/htc/android/epst/internal/DataObject;->executeRestoreCmd()V

    goto :goto_0

    .line 214
    :cond_5
    const/16 v0, 0x9a

    if-ne p1, v0, :cond_7

    .line 215
    sget-boolean v0, Lcom/htc/android/epst/internal/DataObject;->DBG:Z

    if-eqz v0, :cond_6

    .line 216
    const-string v0, "DataObject"

    const-string v1, "execute command EVENT_RIL_REQUEST_SCRTN_OFFLINE_MODE after LPM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_6
    invoke-virtual {p0}, Lcom/htc/android/epst/internal/DataObject;->executeSCRTNCmd()V

    goto :goto_0

    .line 221
    :cond_7
    const-string v0, "DataObject"

    const-string v1, "Fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public executeRefurbishCmd()V
    .locals 2

    .prologue
    .line 753
    invoke-direct {p0}, Lcom/htc/android/epst/internal/DataObject;->clearWiMaxColdBoot()V

    .line 754
    sget-object v0, Lcom/htc/android/epst/internal/DataObject;->mCommandHandler:Lcom/htc/android/epst/internal/DataObjectHandler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/internal/DataObjectHandler;->radioMode(I)V

    .line 755
    return-void
.end method

.method public executeRefurbishPowerSave(Z)V
    .locals 2
    .parameter "ibClearARM11"

    .prologue
    .line 749
    iput-boolean p1, p0, Lcom/htc/android/epst/internal/DataObject;->bClearARM11:Z

    .line 750
    sget-object v0, Lcom/htc/android/epst/internal/DataObject;->mCommandHandler:Lcom/htc/android/epst/internal/DataObjectHandler;

    const/16 v1, 0x99

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/internal/DataObjectHandler;->radioMode(I)V

    .line 751
    return-void
.end method

.method public executeRestoreCmd()V
    .locals 2

    .prologue
    .line 766
    sget-object v0, Lcom/htc/android/epst/internal/DataObject;->mCommandHandler:Lcom/htc/android/epst/internal/DataObjectHandler;

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/internal/DataObjectHandler;->radioMode(I)V

    .line 767
    sget-object v0, Lcom/htc/android/epst/internal/DataObject;->mCommandHandler:Lcom/htc/android/epst/internal/DataObjectHandler;

    const/16 v1, 0x9e

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/internal/DataObjectHandler;->radioMode(I)V

    .line 769
    return-void
.end method

.method public executeRestorePowerSave()V
    .locals 2

    .prologue
    .line 763
    sget-object v0, Lcom/htc/android/epst/internal/DataObject;->mCommandHandler:Lcom/htc/android/epst/internal/DataObjectHandler;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/internal/DataObjectHandler;->radioMode(I)V

    .line 764
    return-void
.end method

.method public executeSCRTNCmd()V
    .locals 2

    .prologue
    .line 785
    sget-object v0, Lcom/htc/android/epst/internal/DataObject;->mCommandHandler:Lcom/htc/android/epst/internal/DataObjectHandler;

    const/16 v1, 0x9b

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/internal/DataObjectHandler;->radioMode(I)V

    .line 786
    return-void
.end method

.method public executeSCRTNPowerSave()V
    .locals 2

    .prologue
    .line 781
    sget-object v0, Lcom/htc/android/epst/internal/DataObject;->mCommandHandler:Lcom/htc/android/epst/internal/DataObjectHandler;

    const/16 v1, 0x9a

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/internal/DataObjectHandler;->radioMode(I)V

    .line 782
    return-void
.end method

.method public generateReadCommandGeneric(III)V
    .locals 7
    .parameter "dmcmd"
    .parameter "nvitemid"
    .parameter "index"

    .prologue
    .line 352
    sget-object v4, Lcom/htc/android/epst/internal/DataObject;->mRecordList:Lcom/htc/android/epst/internal/RecordList;

    invoke-virtual {v4, p1, p2, p3}, Lcom/htc/android/epst/internal/RecordList;->getByIdandIndex(III)Lcom/htc/android/epst/internal/Record;

    move-result-object v2

    .line 353
    .local v2, record:Lcom/htc/android/epst/internal/Record;
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/htc/android/epst/internal/Record;->isSend:Z

    .line 354
    iget-object v3, v2, Lcom/htc/android/epst/internal/Record;->rule:Lcom/htc/android/epst/internal/IRule;

    .line 355
    .local v3, ruleFunc:Lcom/htc/android/epst/internal/IRule;
    iget-object v4, v2, Lcom/htc/android/epst/internal/Record;->customAttr:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/htc/android/epst/internal/IRule;->onPreSendAction(Ljava/lang/String;)I

    move-result v0

    .line 356
    .local v0, arg:I
    iget-object v4, v2, Lcom/htc/android/epst/internal/Record;->customAttr:Ljava/lang/String;

    invoke-interface {v3, p1, p2, p3, v4}, Lcom/htc/android/epst/internal/IRule;->onSendViewAction(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, command:Ljava/lang/String;
    sget-boolean v4, Lcom/htc/android/epst/internal/DataObject;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "DataObject"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "record.name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/htc/android/epst/internal/Record;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " into preprocess map dmcmd:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    sget-object v4, Lcom/htc/android/epst/internal/DataObject;->mCommandHandler:Lcom/htc/android/epst/internal/DataObjectHandler;

    const/16 v5, 0x2711

    invoke-virtual {v4, v2, v1, v5, v0}, Lcom/htc/android/epst/internal/DataObjectHandler;->sendCmdGeneric(Lcom/htc/android/epst/internal/Record;Ljava/lang/String;II)V

    .line 363
    return-void
.end method

.method public isPhoneInService()Z
    .locals 1

    .prologue
    .line 622
    sget-object v0, Lcom/htc/android/epst/internal/DataObject;->mCommandHandler:Lcom/htc/android/epst/internal/DataObjectHandler;

    invoke-virtual {v0}, Lcom/htc/android/epst/internal/DataObjectHandler;->isPhoneInService()Z

    move-result v0

    return v0
.end method

.method public objRebootDevice()V
    .locals 2

    .prologue
    .line 758
    sget-object v0, Lcom/htc/android/epst/internal/DataObject;->mCommandHandler:Lcom/htc/android/epst/internal/DataObjectHandler;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/internal/DataObjectHandler;->radioMode(I)V

    .line 759
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 188
    const-string v0, "DataObject"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->closeDMAgent()V

    .line 190
    return-void
.end method

.method receiveMSL(ZLjava/lang/String;)V
    .locals 8
    .parameter "result"
    .parameter "responseCmd"

    .prologue
    const/4 v7, 0x0

    .line 639
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v2

    .line 641
    .local v2, port:Lcom/htc/android/epst/Port;
    if-eqz p1, :cond_1

    .line 642
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/epst/internal/DataObject;->mParser:Lcom/htc/android/epst/internal/CmdParser;

    invoke-virtual {v5, p2}, Lcom/htc/android/epst/internal/CmdParser;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 643
    .local v3, purecmd:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/android/epst/internal/DataObject;->mParser:Lcom/htc/android/epst/internal/CmdParser;

    invoke-virtual {v5}, Lcom/htc/android/epst/internal/CmdParser;->getCurCmdId()Ljava/lang/String;

    move-result-object v1

    .line 645
    .local v1, id:Ljava/lang/String;
    const-string v5, "41"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 646
    sget-boolean v5, Lcom/htc/android/epst/internal/DataObject;->DBG:Z

    if-eqz v5, :cond_0

    .line 647
    const-string v5, "DataObject"

    const-string v6, "unexpected password "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_0
    const/4 p1, 0x0

    .line 660
    .end local v1           #id:Ljava/lang/String;
    .end local v3           #purecmd:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {v2, p1}, Lcom/htc/android/epst/Port;->passWordResult(Z)V

    .line 666
    :goto_1
    return-void

    .line 652
    .restart local v1       #id:Ljava/lang/String;
    .restart local v3       #purecmd:Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 653
    .local v4, pwResult:Ljava/lang/String;
    const-string v5, "01"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_3

    .line 654
    const/4 p1, 0x1

    goto :goto_0

    .line 656
    :cond_3
    const/4 p1, 0x0

    goto :goto_0

    .line 661
    .end local v1           #id:Ljava/lang/String;
    .end local v3           #purecmd:Ljava/lang/String;
    .end local v4           #pwResult:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 662
    .local v0, ex:Ljava/lang/Exception;
    sget-boolean v5, Lcom/htc/android/epst/internal/DataObject;->DBG:Z

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 663
    const-string v5, "DataObject"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_4
    invoke-virtual {v2, v7}, Lcom/htc/android/epst/Port;->passWordResult(Z)V

    goto :goto_1
.end method

.method receivedReadCommandGeneric(ZLjava/lang/String;IILcom/htc/android/epst/internal/Record;)V
    .locals 10
    .parameter "result"
    .parameter "responseCmd"
    .parameter "type"
    .parameter "appendInfo"
    .parameter "record"

    .prologue
    .line 511
    sget-boolean v0, Lcom/htc/android/epst/internal/DataObject;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "DataObject"

    const-string v1, "receivedReadCommandGeneric:IN"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_0
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v6

    .line 513
    .local v6, port:Lcom/htc/android/epst/Port;
    invoke-direct {p0, p2}, Lcom/htc/android/epst/internal/DataObject;->validateCommand(Ljava/lang/String;)Z

    move-result p1

    .line 514
    iget-object v0, p5, Lcom/htc/android/epst/internal/Record;->response:Lcom/htc/android/epst/internal/StructBase;

    if-nez v0, :cond_1

    .line 515
    iget-object v0, p5, Lcom/htc/android/epst/internal/Record;->request:Lcom/htc/android/epst/internal/StructBase;

    iput-object v0, p5, Lcom/htc/android/epst/internal/Record;->response:Lcom/htc/android/epst/internal/StructBase;

    .line 517
    :cond_1
    const/4 v9, 0x0

    .line 519
    .local v9, status:I
    const-string v0, "FFFF"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 521
    const/4 v9, 0x5

    .line 528
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    if-nez v9, :cond_3

    .line 529
    iget-object v0, p5, Lcom/htc/android/epst/internal/Record;->rule:Lcom/htc/android/epst/internal/IRule;

    iget-object v4, p5, Lcom/htc/android/epst/internal/Record;->response:Lcom/htc/android/epst/internal/StructBase;

    iget-object v5, p5, Lcom/htc/android/epst/internal/Record;->customAttr:Ljava/lang/String;

    move v1, p3

    move-object v2, p2

    move v3, p4

    invoke-interface/range {v0 .. v5}, Lcom/htc/android/epst/internal/IRule;->onReceivedReadMessage(ILjava/lang/String;ILcom/htc/android/epst/internal/StructBase;Ljava/lang/String;)I

    move-result v9

    .line 532
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p5, Lcom/htc/android/epst/internal/Record;->isResponse:Z

    .line 533
    if-eqz v9, :cond_4

    const/4 v0, 0x2

    if-eq v9, v0, :cond_4

    const/4 v0, 0x1

    if-eq v9, v0, :cond_4

    const/4 v0, 0x5

    if-eq v9, v0, :cond_4

    .line 537
    const/4 v9, 0x1

    .line 538
    const/4 v0, 0x0

    iput v0, p5, Lcom/htc/android/epst/internal/Record;->failedstate:I

    .line 540
    :cond_4
    iput v9, p5, Lcom/htc/android/epst/internal/Record;->failedstate:I

    .line 542
    if-eqz p1, :cond_7

    if-nez v9, :cond_7

    .line 543
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/htc/android/epst/internal/CmdParser;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 544
    .local v7, purecmd:Ljava/lang/String;
    iget v0, p5, Lcom/htc/android/epst/internal/Record;->type:I

    if-nez v0, :cond_6

    .line 545
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/htc/android/epst/internal/CmdParser;->cullingNvItemId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 546
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/epst/internal/CmdParser;->getCurNvItemId()Ljava/lang/String;

    move-result-object v8

    .line 547
    .local v8, sResponseNvitemid:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 548
    iget v0, p5, Lcom/htc/android/epst/internal/Record;->nvitemId:I

    iput v0, p0, Lcom/htc/android/epst/internal/DataObject;->mNvitemId:I

    .line 549
    iget v1, p0, Lcom/htc/android/epst/internal/DataObject;->mNvitemId:I

    iget v0, p0, Lcom/htc/android/epst/internal/DataObject;->mNvitemId:I

    const/16 v2, 0x1f40

    if-le v0, v2, :cond_a

    const/16 v0, 0x1f40

    :goto_1
    sub-int v0, v1, v0

    iput v0, p0, Lcom/htc/android/epst/internal/DataObject;->mNvitemId:I

    .line 550
    sget-boolean v0, Lcom/htc/android/epst/internal/DataObject;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "DataObject"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get response nvitemid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v8, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nvitem id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/epst/internal/DataObject;->mNvitemId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_5
    const/16 v0, 0x10

    invoke-static {v8, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/htc/android/epst/internal/DataObject;->mNvitemId:I

    if-eq v0, v1, :cond_6

    .line 552
    const/4 v9, 0x1

    .line 553
    const-string v0, "DataObject"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response nvitem id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v8, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!=nvitem id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/epst/internal/DataObject;->mNvitemId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    .end local v8           #sResponseNvitemid:Ljava/lang/String;
    :cond_6
    iget-object v0, p5, Lcom/htc/android/epst/internal/Record;->response:Lcom/htc/android/epst/internal/StructBase;

    invoke-virtual {v0, v7}, Lcom/htc/android/epst/internal/StructBase;->setCmd(Ljava/lang/String;)V

    .line 558
    iget-object v0, p5, Lcom/htc/android/epst/internal/Record;->response:Lcom/htc/android/epst/internal/StructBase;

    invoke-virtual {v0}, Lcom/htc/android/epst/internal/StructBase;->read()V

    .line 561
    .end local v7           #purecmd:Ljava/lang/String;
    :cond_7
    invoke-virtual {v6, v9}, Lcom/htc/android/epst/Port;->Response(I)V

    .line 563
    monitor-enter p5

    .line 564
    :try_start_0
    sget-boolean v0, Lcom/htc/android/epst/internal/DataObject;->DBG:Z

    if-eqz v0, :cond_8

    .line 565
    const-string v0, "DataObject"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "command "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p5, Lcom/htc/android/epst/internal/Record;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " process done"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_8
    invoke-virtual {p5}, Ljava/lang/Object;->notifyAll()V

    .line 567
    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    return-void

    .line 523
    :cond_9
    iget v0, p5, Lcom/htc/android/epst/internal/Record;->type:I

    if-nez v0, :cond_2

    .line 525
    invoke-virtual {p0, p2}, Lcom/htc/android/epst/internal/DataObject;->validateStateOfNv(Ljava/lang/String;)I

    move-result v9

    goto/16 :goto_0

    .line 549
    .restart local v7       #purecmd:Ljava/lang/String;
    .restart local v8       #sResponseNvitemid:Ljava/lang/String;
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 567
    .end local v7           #purecmd:Ljava/lang/String;
    .end local v8           #sResponseNvitemid:Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public receivedWriteCommandGeneric(ZLjava/lang/String;ILcom/htc/android/epst/internal/Record;)V
    .locals 4
    .parameter "result"
    .parameter "responseCmd"
    .parameter "sequence"
    .parameter "record"

    .prologue
    .line 573
    if-eqz p1, :cond_3

    .line 574
    if-nez p4, :cond_1

    .line 575
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "received command is not attach Record"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    :catch_0
    move-exception v0

    .line 589
    .local v0, ex:Ljava/lang/Exception;
    sget-boolean v2, Lcom/htc/android/epst/internal/DataObject;->DBG:Z

    if-eqz v2, :cond_0

    .line 590
    const-string v2, "DataObject"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_0
    iget v2, p0, Lcom/htc/android/epst/internal/DataObject;->mFailedWriteCommand:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/android/epst/internal/DataObject;->mFailedWriteCommand:I

    .line 597
    .end local v0           #ex:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 578
    :cond_1
    :try_start_1
    iget-object v2, p4, Lcom/htc/android/epst/internal/Record;->rule:Lcom/htc/android/epst/internal/IRule;

    iget-object v3, p4, Lcom/htc/android/epst/internal/Record;->customAttr:Ljava/lang/String;

    invoke-interface {v2, p2, v3}, Lcom/htc/android/epst/internal/IRule;->onReceivedWriteMessage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 580
    .local v1, status:Z
    if-eqz v1, :cond_2

    .line 581
    iget v2, p0, Lcom/htc/android/epst/internal/DataObject;->mSuccessWriteCommand:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/android/epst/internal/DataObject;->mSuccessWriteCommand:I

    goto :goto_0

    .line 583
    :cond_2
    iget v2, p0, Lcom/htc/android/epst/internal/DataObject;->mFailedWriteCommand:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/android/epst/internal/DataObject;->mFailedWriteCommand:I

    goto :goto_0

    .line 586
    .end local v1           #status:Z
    :cond_3
    iget v2, p0, Lcom/htc/android/epst/internal/DataObject;->mFailedWriteCommand:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/android/epst/internal/DataObject;->mFailedWriteCommand:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public resetAllRecordState()V
    .locals 4

    .prologue
    .line 773
    :try_start_0
    sget-object v1, Lcom/htc/android/epst/internal/DataObject;->mNvController:Lcom/htc/android/epst/nvitem/NvItemController;

    invoke-virtual {v1}, Lcom/htc/android/epst/nvitem/NvItemController;->resetAllRecordState()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    :goto_0
    return-void

    .line 774
    :catch_0
    move-exception v0

    .line 775
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DataObject"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetAllRecordState fail!!.e.message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public returnDialog(Ljava/lang/String;)V
    .locals 1
    .parameter "iMessage"

    .prologue
    .line 617
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    .line 618
    .local v0, port:Lcom/htc/android/epst/Port;
    invoke-virtual {v0, p1}, Lcom/htc/android/epst/Port;->returnDialog(Ljava/lang/String;)V

    .line 619
    return-void
.end method

.method public sendMSL(Ljava/lang/String;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 626
    invoke-static {p1}, Lcom/htc/android/epst/Utility;->ASCIIToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 627
    .local v1, commandToString:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1

    .line 629
    :cond_0
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/Port;->passWordResult(Z)V

    .line 636
    :goto_0
    return-void

    .line 631
    :cond_1
    const-string v0, "C841"

    .line 632
    .local v0, command:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 633
    sget-object v2, Lcom/htc/android/epst/internal/DataObject;->mCommandHandler:Lcom/htc/android/epst/internal/DataObjectHandler;

    sget-object v3, Lcom/htc/android/epst/internal/DataObject;->mCommandHandler:Lcom/htc/android/epst/internal/DataObjectHandler;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v0}, Lcom/htc/android/epst/internal/DataObjectHandler;->sendCmd(Landroid/os/Handler;ILjava/lang/String;)V

    goto :goto_0
.end method

.method showRebootPrompt()V
    .locals 1

    .prologue
    .line 730
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    .line 731
    .local v0, port:Lcom/htc/android/epst/Port;
    invoke-virtual {v0}, Lcom/htc/android/epst/Port;->showRebootPrompt()V

    .line 732
    return-void
.end method

.method public storeSendItemGeneric(III)V
    .locals 7
    .parameter "cmdid"
    .parameter "nvitemid"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 380
    sget-object v4, Lcom/htc/android/epst/internal/DataObject;->mRecordList:Lcom/htc/android/epst/internal/RecordList;

    invoke-virtual {v4, p1, p2, p3}, Lcom/htc/android/epst/internal/RecordList;->getByIdandIndex(III)Lcom/htc/android/epst/internal/Record;

    move-result-object v2

    .line 381
    .local v2, record:Lcom/htc/android/epst/internal/Record;
    if-eqz v2, :cond_3

    .line 383
    iget v4, v2, Lcom/htc/android/epst/internal/Record;->failedstate:I

    if-eqz v4, :cond_0

    .line 384
    const/4 v4, 0x0

    iput v4, v2, Lcom/htc/android/epst/internal/Record;->failedstate:I

    .line 387
    :cond_0
    invoke-direct {p0, v2}, Lcom/htc/android/epst/internal/DataObject;->addToSendList(Lcom/htc/android/epst/internal/Record;)V

    .line 388
    iget-object v4, v2, Lcom/htc/android/epst/internal/Record;->relation:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 389
    .local v1, iterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/htc/android/epst/internal/DataChangeListener;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 390
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/internal/DataChangeListener;

    .line 391
    .local v0, dcl:Lcom/htc/android/epst/internal/DataChangeListener;
    instance-of v4, v0, Lcom/htc/android/epst/internal/StructBase;

    if-eqz v4, :cond_1

    .line 392
    sget-object v5, Lcom/htc/android/epst/internal/DataObject;->mRecordList:Lcom/htc/android/epst/internal/RecordList;

    move-object v4, v0

    check-cast v4, Lcom/htc/android/epst/internal/StructBase;

    iget-object v4, v4, Lcom/htc/android/epst/internal/StructBase;->mName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/htc/android/epst/internal/RecordList;->getByName(Ljava/lang/String;)Lcom/htc/android/epst/internal/Record;

    move-result-object v3

    .line 393
    .local v3, relationRecord:Lcom/htc/android/epst/internal/Record;
    if-eqz v3, :cond_2

    .line 394
    invoke-direct {p0, v3}, Lcom/htc/android/epst/internal/DataObject;->addToSendList(Lcom/htc/android/epst/internal/Record;)V

    goto :goto_0

    .line 396
    :cond_2
    sget-boolean v4, Lcom/htc/android/epst/internal/DataObject;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "DataObject"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "relation struct not found, the id of structure is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    check-cast v0, Lcom/htc/android/epst/internal/StructBase;

    .end local v0           #dcl:Lcom/htc/android/epst/internal/DataChangeListener;
    iget v6, v0, Lcom/htc/android/epst/internal/StructBase;->mCmdId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 401
    .end local v1           #iterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/htc/android/epst/internal/DataChangeListener;>;"
    .end local v3           #relationRecord:Lcom/htc/android/epst/internal/Record;
    :cond_3
    const-string v4, "DataObject"

    const-string v5, "Get null record!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_4
    return-void
.end method

.method updateOTKSLAuthResult(ZLjava/lang/String;)V
    .locals 7
    .parameter "result"
    .parameter "responseCmd"

    .prologue
    .line 681
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v3

    .line 683
    .local v3, port:Lcom/htc/android/epst/Port;
    if-eqz p1, :cond_0

    .line 684
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/epst/internal/DataObject;->mParser:Lcom/htc/android/epst/internal/CmdParser;

    invoke-virtual {v5, p2}, Lcom/htc/android/epst/internal/CmdParser;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 685
    .local v4, purecmd:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/android/epst/internal/DataObject;->mParser:Lcom/htc/android/epst/internal/CmdParser;

    invoke-virtual {v5}, Lcom/htc/android/epst/internal/CmdParser;->getCurCmdId()Ljava/lang/String;

    move-result-object v1

    .line 686
    .local v1, id:Ljava/lang/String;
    const-string v5, "D9"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 687
    const/4 p1, 0x0

    .line 688
    sget-boolean v5, Lcom/htc/android/epst/internal/DataObject;->DBG:Z

    if-eqz v5, :cond_0

    .line 689
    const-string v5, "DataObject"

    const-string v6, "unexpected password "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    .end local v1           #id:Ljava/lang/String;
    .end local v4           #purecmd:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v3, p1}, Lcom/htc/android/epst/Port;->updateOTKSLAuthResult(Z)V

    .line 705
    :goto_1
    return-void

    .line 691
    .restart local v1       #id:Ljava/lang/String;
    .restart local v4       #purecmd:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 692
    .local v2, otkslResult:Ljava/lang/String;
    const-string v5, "01"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    .line 693
    const/4 p1, 0x1

    goto :goto_0

    .line 695
    :cond_2
    const/4 p1, 0x0

    goto :goto_0

    .line 700
    .end local v1           #id:Ljava/lang/String;
    .end local v2           #otkslResult:Ljava/lang/String;
    .end local v4           #purecmd:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 701
    .local v0, ex:Ljava/lang/Exception;
    sget-boolean v5, Lcom/htc/android/epst/internal/DataObject;->DBG:Z

    if-eqz v5, :cond_3

    .line 702
    const-string v5, "DataObject"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_3
    invoke-virtual {v3, p1}, Lcom/htc/android/epst/Port;->updateOTKSLAuthResult(Z)V

    goto :goto_1
.end method

.method public validateStateOfNv(Ljava/lang/String;)I
    .locals 7
    .parameter "command"

    .prologue
    .line 455
    const-string v0, ""

    .line 456
    .local v0, errMsg:Ljava/lang/String;
    const/4 v2, -0x1

    .line 457
    .local v2, state:I
    if-eqz p1, :cond_1

    .line 458
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_1

    .line 459
    const/4 v2, 0x1

    .line 460
    const-string v0, "response command length is not enough"

    .line 461
    sget-boolean v4, Lcom/htc/android/epst/internal/DataObject;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "DataObject"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "command state is error, reason is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v3, v2

    .line 505
    .end local v2           #state:I
    .local v3, state:I
    :goto_0
    return v3

    .line 466
    .end local v3           #state:I
    .restart local v2       #state:I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 468
    .local v1, errState:Ljava/lang/String;
    const-string v4, "0000"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 469
    const/4 v2, 0x0

    .line 470
    const-string v0, ""

    .line 502
    :goto_1
    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 503
    sget-boolean v4, Lcom/htc/android/epst/internal/DataObject;->DBG:Z

    if-eqz v4, :cond_2

    const-string v4, "DataObject"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "command state is error, reason is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v3, v2

    .line 505
    .end local v2           #state:I
    .restart local v3       #state:I
    goto :goto_0

    .line 471
    .end local v3           #state:I
    .restart local v2       #state:I
    :cond_3
    const-string v4, "0100"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 472
    const/4 v2, 0x1

    .line 473
    const-string v0, "internal dmss used"

    goto :goto_1

    .line 474
    :cond_4
    const-string v4, "0200"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 475
    const/4 v2, 0x1

    .line 476
    const-string v0, "can\'t recognize command"

    goto :goto_1

    .line 477
    :cond_5
    const-string v4, "0300"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 478
    const/4 v2, 0x1

    .line 479
    const-string v0, "memory is full"

    goto :goto_1

    .line 480
    :cond_6
    const-string v4, "0400"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 481
    const/4 v2, 0x1

    .line 482
    const-string v0, "command is fail"

    goto :goto_1

    .line 483
    :cond_7
    const-string v4, "0500"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 484
    const/4 v2, 0x2

    .line 485
    const-string v0, "not support this command"

    goto :goto_1

    .line 486
    :cond_8
    const-string v4, "0600"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 487
    const/4 v2, 0x2

    .line 488
    const-string v0, "bad command parameters or not exists"

    goto :goto_1

    .line 489
    :cond_9
    const-string v4, "0700"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 490
    const/4 v2, 0x1

    .line 491
    const-string v0, "memeory is read only"

    goto :goto_1

    .line 493
    :cond_a
    const-string v4, "FFFF"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 495
    const/4 v2, 0x5

    .line 496
    const-string v0, "No respone!!"

    goto/16 :goto_1

    .line 499
    :cond_b
    const/4 v2, 0x1

    .line 500
    const-string v0, "command error with non-knowing reason"

    goto/16 :goto_1
.end method
