.class public Lcom/htc/android/fieldtrial/internal/DataObject;
.super Ljava/lang/Object;
.source "DataObject.java"


# static fields
.field private static final BAD_CODE_LENGTH:I = 0x4

.field private static DBG:Z = false

.field private static final D_PASSWORD_REQUESST_ERROR:Ljava/lang/String; = "unexpected password "

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final ERR_BAD_COMMAND:Ljava/lang/String; = "C813"

.field private static final ERR_BAD_LENGTH:Ljava/lang/String; = "C815"

.field private static final ERR_BAD_MODE:Ljava/lang/String; = "C818"

.field private static final ERR_BAD_NOT_AT:Ljava/lang/String; = "C8"

.field private static final ERR_BAD_PARAMETER:Ljava/lang/String; = "C814"

.field private static final ERR_BAD_SECURITY:Ljava/lang/String; = "C847"

.field private static final ERR_BAD_SPC:Ljava/lang/String; = "C842"

.field private static final ERR_BAD_USER_LENGTH:Ljava/lang/String; = "U01"

.field public static final ERR_NO_RESPONSE:Ljava/lang/String; = "FFFF"

.field private static final ERR_NV_CMD_FAILED:Ljava/lang/String; = "0400"

.field private static final ERR_NV_INTERNAL_DMSS_USE:Ljava/lang/String; = "0100"

.field private static final ERR_NV_LENGTH:I = 0x4

.field private static final ERR_NV_MEMORY_FULL:Ljava/lang/String; = "0300"

.field private static final ERR_NV_NOT_EXIST_OR_BAD_PARAMS:Ljava/lang/String; = "0600"

.field private static final ERR_NV_NOT_RECOGN_CMD:Ljava/lang/String; = "0200"

.field private static final ERR_NV_NOT_SUPPORT:Ljava/lang/String; = "0500"

.field private static final ERR_NV_READ_ONLY:Ljava/lang/String; = "0700"

.field public static final EVENT_RIL_DM_CMD_READ:I = 0x2711

.field public static final EVENT_RIL_DM_CMD_WRITE:I = 0x2712

.field public static final EVENT_RIL_REQUEST_CLEAR_GPS:I = 0x6d

.field public static final EVENT_RIL_REQUEST_OTKSL:I = 0x6e

.field public static final EVENT_RIL_REQUEST_PASSWORD:I = 0x64

.field public static final EVENT_RIL_REQUEST_RADIO_POWER_SAVE_MODE:I = 0x69

.field public static final EVENT_RIL_REQUEST_RADIO_RESET_MODE:I = 0x6a

.field public static final EVENT_RIL_REQUEST_READ_INDEXTYPE:I = 0x66

.field public static final EVENT_RIL_REQUEST_READ_STRINGTYPE:I = 0x65

.field public static final EVENT_RIL_SEND_COMMAND_UI:I = 0x0

.field private static final ID_CMD_MSL:Ljava/lang/String; = "41"

.field private static final ID_CMD_PREFIX:Ljava/lang/String; = "C8"

.field private static final LOG_TAG:Ljava/lang/String; = "DataObject"

.field public static final NVOPERATORID:Ljava/lang/String; = "C8F8000000"

.field private static final NV_SUCCESS:Ljava/lang/String; = "0000"

.field public static final RADIO_OFF:I = 0x6b

.field public static final RADIO_POWERSAVE:I = 0x69

.field public static final RADIO_RESET:I = 0x6a

.field public static final REBOOT:I = 0x6c

.field private static final RESULT_MSL_CORRECT:Ljava/lang/String; = "01"

.field public static final STATE_NEED_WRITE:I = 0x4

.field public static final STATE_NOT_SEND:I = 0x3

.field public static final STATE_SEND_ALREADY_AND_FAILED:I = 0x1

.field public static final STATE_SEND_ALREADY_AND_NOT_SUPPORT:I = 0x2

.field public static final STATE_SEND_ALREADY_AND_SUCCESS:I = 0x0

.field public static final STATUS_NO_RESPONSE:I = 0x5

.field public static final TYPE_DMCMD:I = 0x1

.field public static final TYPE_NVITEM:I

.field private static gDMAgent:Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;

.field public static gbConnected:Z

.field public static gbSupportDMAgent:Z

.field private static mCommandHandler:Lcom/htc/android/fieldtrial/internal/DataObjectHandler;

.field private static mNewInstance:Lcom/htc/android/fieldtrial/internal/DataObject;

.field private static mRecordList:Lcom/htc/android/fieldtrial/internal/RecordList;


# instance fields
.field private mBaseStructList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/fieldtrial/internal/StructBase;",
            ">;"
        }
    .end annotation
.end field

.field private mDmController:Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;

.field private mNvController:Lcom/htc/android/fieldtrial/nvitem/NvItemController;

.field private mParser:Lcom/htc/android/fieldtrial/internal/CmdParser;

.field private mSendList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/fieldtrial/internal/Record;",
            ">;"
        }
    .end annotation
.end field

.field private mWriteCmdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/htc/android/fieldtrial/internal/Record;",
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
    .line 19
    sget-boolean v0, Lcom/htc/android/fieldtrial/FieldTrial;->DBG:Z

    sput-boolean v0, Lcom/htc/android/fieldtrial/internal/DataObject;->DBG:Z

    .line 21
    new-instance v0, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;

    invoke-direct {v0}, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;-><init>()V

    sput-object v0, Lcom/htc/android/fieldtrial/internal/DataObject;->mCommandHandler:Lcom/htc/android/fieldtrial/internal/DataObjectHandler;

    .line 60
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/RecordList;->getSingleton()Lcom/htc/android/fieldtrial/internal/RecordList;

    move-result-object v0

    sput-object v0, Lcom/htc/android/fieldtrial/internal/DataObject;->mRecordList:Lcom/htc/android/fieldtrial/internal/RecordList;

    .line 82
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/fieldtrial/internal/DataObject;->gDMAgent:Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;

    .line 83
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/android/fieldtrial/internal/DataObject;->gbConnected:Z

    .line 84
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/android/fieldtrial/internal/DataObject;->gbSupportDMAgent:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/android/fieldtrial/internal/DataObject;->mBaseStructList:Ljava/util/ArrayList;

    .line 79
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/htc/android/fieldtrial/internal/DataObject;->mWriteCmdMap:Ljava/util/HashMap;

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/android/fieldtrial/internal/DataObject;->mSendList:Ljava/util/ArrayList;

    .line 88
    :try_start_0
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getSingleton()Lcom/htc/android/fieldtrial/internal/CmdParser;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/internal/DataObject;->mParser:Lcom/htc/android/fieldtrial/internal/CmdParser;

    .line 89
    invoke-static {}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;->getSingleton()Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/internal/DataObject;->mDmController:Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;

    .line 91
    invoke-static {}, Lcom/htc/android/fieldtrial/nvitem/NvItemController;->getSingleton()Lcom/htc/android/fieldtrial/nvitem/NvItemController;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/internal/DataObject;->mNvController:Lcom/htc/android/fieldtrial/nvitem/NvItemController;

    .line 95
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/DataObject;->bCreateDMagent()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "DataObject"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static bCreateDMagent()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 105
    sget-boolean v2, Lcom/htc/android/fieldtrial/internal/DataObject;->gbSupportDMAgent:Z

    if-ne v2, v5, :cond_3

    sget-object v2, Lcom/htc/android/fieldtrial/internal/DataObject;->gDMAgent:Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;

    if-nez v2, :cond_3

    .line 107
    new-instance v2, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;

    invoke-direct {v2}, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;-><init>()V

    sput-object v2, Lcom/htc/android/fieldtrial/internal/DataObject;->gDMAgent:Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;

    .line 108
    sget-object v2, Lcom/htc/android/fieldtrial/internal/DataObject;->mCommandHandler:Lcom/htc/android/fieldtrial/internal/DataObjectHandler;

    sget-object v3, Lcom/htc/android/fieldtrial/internal/DataObject;->gDMAgent:Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;

    invoke-virtual {v2, v3}, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->setDMAgent(Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;)V

    .line 110
    const/4 v1, 0x0

    .line 111
    .local v1, nCount:I
    :goto_0
    sget-object v2, Lcom/htc/android/fieldtrial/internal/DataObject;->gDMAgent:Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;

    invoke-virtual {v2}, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->openConnection()Z

    move-result v2

    if-nez v2, :cond_2

    .line 112
    const-string v2, "DataObject"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/16 v2, 0xa

    if-lt v1, v2, :cond_1

    .line 115
    sget-object v2, Lcom/htc/android/fieldtrial/internal/DataObject;->gDMAgent:Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;

    if-eqz v2, :cond_0

    .line 116
    sget-object v2, Lcom/htc/android/fieldtrial/internal/DataObject;->gDMAgent:Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;

    invoke-virtual {v2}, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->closeConnection()Z

    .line 117
    const-string v2, "DataObject"

    const-string v3, "gDMAgent.closeConnection()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    const/4 v2, 0x0

    sput-boolean v2, Lcom/htc/android/fieldtrial/internal/DataObject;->gbConnected:Z

    .line 123
    :cond_1
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DataObject"

    const-string v3, "Thread.sleep(500).ERROR"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 129
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    sput-boolean v5, Lcom/htc/android/fieldtrial/internal/DataObject;->gbConnected:Z

    .line 133
    :cond_3
    sget-boolean v2, Lcom/htc/android/fieldtrial/internal/DataObject;->gbConnected:Z

    return v2
.end method

.method public static getSingleton()Lcom/htc/android/fieldtrial/internal/DataObject;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/htc/android/fieldtrial/internal/DataObject;->mNewInstance:Lcom/htc/android/fieldtrial/internal/DataObject;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lcom/htc/android/fieldtrial/internal/DataObject;

    invoke-direct {v0}, Lcom/htc/android/fieldtrial/internal/DataObject;-><init>()V

    sput-object v0, Lcom/htc/android/fieldtrial/internal/DataObject;->mNewInstance:Lcom/htc/android/fieldtrial/internal/DataObject;

    .line 139
    :cond_0
    sget-object v0, Lcom/htc/android/fieldtrial/internal/DataObject;->mNewInstance:Lcom/htc/android/fieldtrial/internal/DataObject;

    return-object v0
.end method

.method private isCommandLegal(Ljava/lang/String;)Z
    .locals 9
    .parameter "command"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x4

    .line 226
    const/4 v3, 0x0

    .line 227
    .local v3, isLegal:Z
    const-string v2, ""

    .line 228
    .local v2, errMsg:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v8, :cond_0

    .line 229
    const-string v5, "DataObject"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isCommandLegal.command length is not enough:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string v2, "U01"

    move v4, v3

    .line 257
    .end local v3           #isLegal:Z
    .local v4, isLegal:I
    :goto_0
    return v4

    .line 233
    .end local v4           #isLegal:I
    .restart local v3       #isLegal:Z
    :cond_0
    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, errCode:Ljava/lang/String;
    const/4 v5, 0x2

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, errCode2:Ljava/lang/String;
    const-string v5, "C8"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 237
    const-string v5, "DataObject"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isCommandLegal.Not AT-DM command:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string v2, "Not AT-DM command!!"

    .line 254
    :goto_1
    if-nez v3, :cond_1

    .line 255
    const-string v5, "DataObject"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "received command error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", orginal command : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v4, v3

    .line 257
    .restart local v4       #isLegal:I
    goto :goto_0

    .line 239
    .end local v4           #isLegal:I
    :cond_2
    const-string v5, "C813"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 240
    const-string v2, "bad command"

    goto :goto_1

    .line 241
    :cond_3
    const-string v5, "C814"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 242
    const-string v2, "bad parameter"

    goto :goto_1

    .line 243
    :cond_4
    const-string v5, "C815"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 244
    const-string v2, "bad length"

    goto :goto_1

    .line 245
    :cond_5
    const-string v5, "C818"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 246
    const-string v2, "bad mode"

    goto :goto_1

    .line 247
    :cond_6
    const-string v5, "C842"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 248
    const-string v2, "bad spc"

    goto :goto_1

    .line 249
    :cond_7
    const-string v5, "C847"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 250
    const-string v2, "bad security"

    goto :goto_1

    .line 252
    :cond_8
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static receiveCommandUI(ZLjava/lang/String;)V
    .locals 3
    .parameter "result"
    .parameter "responseCmd"

    .prologue
    .line 368
    if-nez p0, :cond_0

    .line 369
    :try_start_0
    const-string v1, "DataObject"

    const-string v2, "receiveCommandUI.result is false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_0
    invoke-static {p1}, Lcom/htc/android/fieldtrial/FieldTrial;->getOperatorType(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :goto_0
    return-void

    .line 373
    :catch_0
    move-exception v0

    .line 375
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendCommandUI(Ljava/lang/String;)V
    .locals 3
    .parameter "iCommand"

    .prologue
    .line 356
    if-nez p0, :cond_0

    .line 358
    const-string v0, "DataObject"

    const-string v1, "sendCommandUI.iCommand=null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    sget-boolean v0, Lcom/htc/android/fieldtrial/internal/DataObject;->DBG:Z

    if-eqz v0, :cond_1

    .line 361
    const-string v0, "DataObject"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCommandUI.command:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_1
    sget-object v0, Lcom/htc/android/fieldtrial/internal/DataObject;->mCommandHandler:Lcom/htc/android/fieldtrial/internal/DataObjectHandler;

    sget-object v1, Lcom/htc/android/fieldtrial/internal/DataObject;->mCommandHandler:Lcom/htc/android/fieldtrial/internal/DataObjectHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->sendCmd(Landroid/os/Handler;ILjava/lang/String;)V

    .line 364
    return-void
.end method

.method private validateStateOfNv(Ljava/lang/String;)I
    .locals 6
    .parameter "command"

    .prologue
    .line 272
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, errState:Ljava/lang/String;
    const-string v0, ""

    .line 274
    .local v0, errMsg:Ljava/lang/String;
    const/4 v2, -0x1

    .line 275
    .local v2, state:I
    const-string v3, "0000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 276
    const/4 v2, 0x0

    .line 277
    const-string v0, ""

    .line 309
    :goto_0
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 310
    const-string v3, "DataObject"

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

    .line 312
    :cond_0
    return v2

    .line 278
    :cond_1
    const-string v3, "0100"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 279
    const/4 v2, 0x1

    .line 280
    const-string v0, "internal dmss used"

    goto :goto_0

    .line 281
    :cond_2
    const-string v3, "0200"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 282
    const/4 v2, 0x1

    .line 283
    const-string v0, "can\'t recognize command"

    goto :goto_0

    .line 284
    :cond_3
    const-string v3, "0300"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 285
    const/4 v2, 0x1

    .line 286
    const-string v0, "memory is full"

    goto :goto_0

    .line 287
    :cond_4
    const-string v3, "0400"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 288
    const/4 v2, 0x1

    .line 289
    const-string v0, "command is fail"

    goto :goto_0

    .line 290
    :cond_5
    const-string v3, "0500"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 291
    const/4 v2, 0x2

    .line 292
    const-string v0, "not support this command"

    goto :goto_0

    .line 293
    :cond_6
    const-string v3, "0600"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 294
    const/4 v2, 0x2

    .line 295
    const-string v0, "bad command parameters or not exists"

    goto :goto_0

    .line 296
    :cond_7
    const-string v3, "0700"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 297
    const/4 v2, 0x1

    .line 298
    const-string v0, "memeory is read only"

    goto :goto_0

    .line 300
    :cond_8
    const-string v3, "FFFF"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 302
    const/4 v2, 0x5

    .line 303
    const-string v0, "No respone!!"

    goto :goto_0

    .line 306
    :cond_9
    const/4 v2, 0x1

    .line 307
    const-string v0, "command error with non-knowing reason"

    goto/16 :goto_0
.end method


# virtual methods
.method public checkSendState(III)I
    .locals 5
    .parameter "cmdid"
    .parameter "nvitemid"
    .parameter "index"

    .prologue
    const/4 v3, 0x1

    .line 156
    const/4 v1, -0x1

    .line 157
    .local v1, status:I
    sget-object v2, Lcom/htc/android/fieldtrial/internal/DataObject;->mRecordList:Lcom/htc/android/fieldtrial/internal/RecordList;

    invoke-virtual {v2, p1, p2, p3}, Lcom/htc/android/fieldtrial/internal/RecordList;->getByIdandIndex(III)Lcom/htc/android/fieldtrial/internal/Record;

    move-result-object v0

    .line 159
    .local v0, record:Lcom/htc/android/fieldtrial/internal/Record;
    if-eqz v0, :cond_0

    .line 160
    iget-boolean v2, v0, Lcom/htc/android/fieldtrial/internal/Record;->isSend:Z

    if-ne v2, v3, :cond_3

    .line 161
    iget v2, v0, Lcom/htc/android/fieldtrial/internal/Record;->failedstate:I

    if-ne v2, v3, :cond_1

    .line 162
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

    .line 163
    const/4 v1, 0x1

    .line 173
    :cond_0
    :goto_0
    return v1

    .line 164
    :cond_1
    iget v2, v0, Lcom/htc/android/fieldtrial/internal/Record;->failedstate:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 165
    const/4 v1, 0x2

    goto :goto_0

    .line 167
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 170
    :cond_3
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 402
    sget-object v0, Lcom/htc/android/fieldtrial/internal/DataObject;->mCommandHandler:Lcom/htc/android/fieldtrial/internal/DataObjectHandler;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->writeTitle:Z

    .line 403
    iget-object v0, p0, Lcom/htc/android/fieldtrial/internal/DataObject;->mSendList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/htc/android/fieldtrial/internal/DataObject;->mSendList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/htc/android/fieldtrial/internal/DataObject;->mBaseStructList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/htc/android/fieldtrial/internal/DataObject;->mBaseStructList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/htc/android/fieldtrial/internal/DataObject;->mWriteCmdMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 410
    iget-object v0, p0, Lcom/htc/android/fieldtrial/internal/DataObject;->mWriteCmdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 413
    :cond_2
    return-void
.end method

.method public generateReadCmdandSend(III)V
    .locals 7
    .parameter "dmcmd"
    .parameter "nvitemid"
    .parameter "index"

    .prologue
    .line 177
    sget-object v4, Lcom/htc/android/fieldtrial/internal/DataObject;->mRecordList:Lcom/htc/android/fieldtrial/internal/RecordList;

    invoke-virtual {v4, p1, p2, p3}, Lcom/htc/android/fieldtrial/internal/RecordList;->getByIdandIndex(III)Lcom/htc/android/fieldtrial/internal/Record;

    move-result-object v2

    .line 178
    .local v2, record:Lcom/htc/android/fieldtrial/internal/Record;
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/htc/android/fieldtrial/internal/Record;->isSend:Z

    .line 179
    iget-object v3, v2, Lcom/htc/android/fieldtrial/internal/Record;->rule:Lcom/htc/android/fieldtrial/internal/IRule;

    .line 180
    .local v3, ruleFunc:Lcom/htc/android/fieldtrial/internal/IRule;
    iget-object v4, v2, Lcom/htc/android/fieldtrial/internal/Record;->customAttr:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/htc/android/fieldtrial/internal/IRule;->onPreSendAction(Ljava/lang/String;)I

    move-result v0

    .line 181
    .local v0, arg:I
    iget-object v4, v2, Lcom/htc/android/fieldtrial/internal/Record;->customAttr:Ljava/lang/String;

    invoke-interface {v3, p1, p2, p3, v4}, Lcom/htc/android/fieldtrial/internal/IRule;->onSendViewAction(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, command:Ljava/lang/String;
    const-string v4, "DataObject"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "command:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    sget-object v4, Lcom/htc/android/fieldtrial/internal/DataObject;->mCommandHandler:Lcom/htc/android/fieldtrial/internal/DataObjectHandler;

    const/16 v5, 0x2711

    invoke-virtual {v4, v2, v1, v5, v0}, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->sendReadCmd(Lcom/htc/android/fieldtrial/internal/Record;Ljava/lang/String;II)V

    .line 184
    return-void
.end method

.method public isPhoneInService()Z
    .locals 1

    .prologue
    .line 380
    sget-object v0, Lcom/htc/android/fieldtrial/internal/DataObject;->mCommandHandler:Lcom/htc/android/fieldtrial/internal/DataObjectHandler;

    invoke-virtual {v0}, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->isPhoneInService()Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/htc/android/fieldtrial/internal/DataObject;->gDMAgent:Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;

    if-eqz v0, :cond_0

    .line 145
    sget-object v0, Lcom/htc/android/fieldtrial/internal/DataObject;->gDMAgent:Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;

    invoke-virtual {v0}, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->closeConnection()Z

    .line 146
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/android/fieldtrial/internal/DataObject;->gbConnected:Z

    .line 148
    :cond_0
    return-void
.end method

.method receiveMSL(ZLjava/lang/String;)V
    .locals 7
    .parameter "result"
    .parameter "responseCmd"

    .prologue
    .line 330
    invoke-static {}, Lcom/htc/android/fieldtrial/Port;->getSingleton()Lcom/htc/android/fieldtrial/Port;

    move-result-object v2

    .line 332
    .local v2, port:Lcom/htc/android/fieldtrial/Port;
    if-eqz p1, :cond_0

    .line 333
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/fieldtrial/internal/DataObject;->mParser:Lcom/htc/android/fieldtrial/internal/CmdParser;

    invoke-virtual {v5, p2}, Lcom/htc/android/fieldtrial/internal/CmdParser;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 334
    .local v3, purecmd:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/android/fieldtrial/internal/DataObject;->mParser:Lcom/htc/android/fieldtrial/internal/CmdParser;

    invoke-virtual {v5}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getCurCmdId()Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, id:Ljava/lang/String;
    const-string v5, "41"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 336
    const-string v5, "DataObject"

    const-string v6, "unexpected password "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/4 p1, 0x0

    .line 347
    .end local v1           #id:Ljava/lang/String;
    .end local v3           #purecmd:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v2, p1}, Lcom/htc/android/fieldtrial/Port;->passWordResult(Z)V

    .line 352
    :goto_1
    return-void

    .line 339
    .restart local v1       #id:Ljava/lang/String;
    .restart local v3       #purecmd:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 340
    .local v4, pwResult:Ljava/lang/String;
    const-string v5, "01"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    .line 341
    const/4 p1, 0x1

    goto :goto_0

    .line 343
    :cond_2
    const/4 p1, 0x0

    goto :goto_0

    .line 348
    .end local v1           #id:Ljava/lang/String;
    .end local v3           #purecmd:Ljava/lang/String;
    .end local v4           #pwResult:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 349
    .local v0, ex:Ljava/lang/Exception;
    const-string v5, "DataObject"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-virtual {v2, p1}, Lcom/htc/android/fieldtrial/Port;->passWordResult(Z)V

    goto :goto_1
.end method

.method receivedReadCmd(ZLjava/lang/String;IILcom/htc/android/fieldtrial/internal/Record;)V
    .locals 9
    .parameter "result"
    .parameter "responseCmd"
    .parameter "type"
    .parameter "appendInfo"
    .parameter "record"

    .prologue
    .line 188
    invoke-static {}, Lcom/htc/android/fieldtrial/Port;->getSingleton()Lcom/htc/android/fieldtrial/Port;

    move-result-object v6

    .line 189
    .local v6, port:Lcom/htc/android/fieldtrial/Port;
    iget-object v0, p5, Lcom/htc/android/fieldtrial/internal/Record;->response:Lcom/htc/android/fieldtrial/internal/StructBase;

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p5, Lcom/htc/android/fieldtrial/internal/Record;->request:Lcom/htc/android/fieldtrial/internal/StructBase;

    iput-object v0, p5, Lcom/htc/android/fieldtrial/internal/Record;->response:Lcom/htc/android/fieldtrial/internal/StructBase;

    .line 192
    :cond_0
    invoke-direct {p0, p2}, Lcom/htc/android/fieldtrial/internal/DataObject;->isCommandLegal(Ljava/lang/String;)Z

    move-result p1

    .line 194
    const/4 v8, 0x0

    .line 195
    .local v8, status:I
    iget v0, p5, Lcom/htc/android/fieldtrial/internal/Record;->type:I

    if-nez v0, :cond_1

    .line 196
    invoke-direct {p0, p2}, Lcom/htc/android/fieldtrial/internal/DataObject;->validateStateOfNv(Ljava/lang/String;)I

    move-result v8

    .line 199
    :cond_1
    iget-object v0, p5, Lcom/htc/android/fieldtrial/internal/Record;->rule:Lcom/htc/android/fieldtrial/internal/IRule;

    iget-object v4, p5, Lcom/htc/android/fieldtrial/internal/Record;->response:Lcom/htc/android/fieldtrial/internal/StructBase;

    iget-object v5, p5, Lcom/htc/android/fieldtrial/internal/Record;->customAttr:Ljava/lang/String;

    move v1, p3

    move-object v2, p2

    move v3, p4

    invoke-interface/range {v0 .. v5}, Lcom/htc/android/fieldtrial/internal/IRule;->onReceivedReadMessage(ILjava/lang/String;ILcom/htc/android/fieldtrial/internal/StructBase;Ljava/lang/String;)I

    move-result v8

    .line 201
    if-eqz p1, :cond_4

    if-nez v8, :cond_4

    .line 203
    iget v0, p5, Lcom/htc/android/fieldtrial/internal/Record;->type:I

    if-nez v0, :cond_2

    .line 204
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getSingleton()Lcom/htc/android/fieldtrial/internal/CmdParser;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/htc/android/fieldtrial/internal/CmdParser;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 205
    .local v7, purecmd:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getSingleton()Lcom/htc/android/fieldtrial/internal/CmdParser;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/htc/android/fieldtrial/internal/CmdParser;->cullingNvItemId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 206
    iget-object v0, p5, Lcom/htc/android/fieldtrial/internal/Record;->response:Lcom/htc/android/fieldtrial/internal/StructBase;

    invoke-virtual {v0, v7}, Lcom/htc/android/fieldtrial/internal/StructBase;->setCmd(Ljava/lang/String;)V

    .line 209
    .end local v7           #purecmd:Ljava/lang/String;
    :cond_2
    iget-object v0, p5, Lcom/htc/android/fieldtrial/internal/Record;->response:Lcom/htc/android/fieldtrial/internal/StructBase;

    invoke-virtual {v0}, Lcom/htc/android/fieldtrial/internal/StructBase;->read()V

    .line 213
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p5, Lcom/htc/android/fieldtrial/internal/Record;->isResponse:Z

    .line 214
    iput v8, p5, Lcom/htc/android/fieldtrial/internal/Record;->failedstate:I

    .line 215
    invoke-virtual {v6, v8}, Lcom/htc/android/fieldtrial/Port;->Response(I)V

    .line 217
    monitor-enter p5

    .line 218
    :try_start_0
    sget-boolean v0, Lcom/htc/android/fieldtrial/internal/DataObject;->DBG:Z

    if-eqz v0, :cond_3

    .line 219
    const-string v0, "EPST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "command "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p5, Lcom/htc/android/fieldtrial/internal/Record;->name:Ljava/lang/String;

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

    .line 221
    :cond_3
    invoke-virtual {p5}, Ljava/lang/Object;->notifyAll()V

    .line 222
    monitor-exit p5

    .line 223
    return-void

    .line 211
    :cond_4
    const/4 v8, 0x1

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetAllRecordState()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/htc/android/fieldtrial/internal/DataObject;->mDmController:Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;

    invoke-static {}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;->getSingleton()Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;->resetAllRecordState()V

    .line 152
    iget-object v0, p0, Lcom/htc/android/fieldtrial/internal/DataObject;->mNvController:Lcom/htc/android/fieldtrial/nvitem/NvItemController;

    invoke-static {}, Lcom/htc/android/fieldtrial/nvitem/NvItemController;->getSingleton()Lcom/htc/android/fieldtrial/nvitem/NvItemController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/fieldtrial/nvitem/NvItemController;->resetAllRecordState()V

    .line 153
    return-void
.end method

.method public resetGPS()V
    .locals 1

    .prologue
    .line 398
    sget-object v0, Lcom/htc/android/fieldtrial/internal/DataObject;->mCommandHandler:Lcom/htc/android/fieldtrial/internal/DataObjectHandler;

    invoke-virtual {v0}, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->resetGPS()V

    .line 399
    return-void
.end method

.method public sendMSL(Ljava/lang/String;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 317
    invoke-static {p1}, Lcom/htc/android/fieldtrial/Utility;->ASCIIToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 318
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

    .line 320
    :cond_0
    invoke-static {}, Lcom/htc/android/fieldtrial/Port;->getSingleton()Lcom/htc/android/fieldtrial/Port;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/android/fieldtrial/Port;->passWordResult(Z)V

    .line 327
    :goto_0
    return-void

    .line 322
    :cond_1
    const-string v0, "C841"

    .line 323
    .local v0, command:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    sget-object v2, Lcom/htc/android/fieldtrial/internal/DataObject;->mCommandHandler:Lcom/htc/android/fieldtrial/internal/DataObjectHandler;

    sget-object v3, Lcom/htc/android/fieldtrial/internal/DataObject;->mCommandHandler:Lcom/htc/android/fieldtrial/internal/DataObjectHandler;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v0}, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->sendCmd(Landroid/os/Handler;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public startGPS()V
    .locals 1

    .prologue
    .line 384
    sget-object v0, Lcom/htc/android/fieldtrial/internal/DataObject;->mCommandHandler:Lcom/htc/android/fieldtrial/internal/DataObjectHandler;

    invoke-virtual {v0}, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->startGPS()V

    .line 385
    return-void
.end method

.method public stopGPS()V
    .locals 1

    .prologue
    .line 391
    sget-object v0, Lcom/htc/android/fieldtrial/internal/DataObject;->mCommandHandler:Lcom/htc/android/fieldtrial/internal/DataObjectHandler;

    invoke-virtual {v0}, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->stopGPS()V

    .line 395
    return-void
.end method
