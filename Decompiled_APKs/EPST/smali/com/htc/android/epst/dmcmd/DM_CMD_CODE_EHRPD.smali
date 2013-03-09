.class public Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;
.super Lcom/htc/android/epst/dmcmd/DmCmdBase;
.source "DM_CMD_CODE_EHRPD.java"


# static fields
.field private static MAX_LEN:I


# instance fields
.field private DBG:Z

.field private EHRPD_NAI:Ljava/lang/String;

.field private EHRPD_PRIVATE_UID:Ljava/lang/String;

.field private EHRPD_PUBLIC_UID:Ljava/lang/String;

.field private LOG_TAG:Ljava/lang/String;

.field private OPTION:I

.field private STATUS:I

.field private mCmdDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x80

    sput v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->MAX_LEN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/htc/android/epst/dmcmd/DmCmdBase;-><init>()V

    .line 33
    const-string v0, "DM_CMD_CODE_EHRPD"

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->LOG_TAG:Ljava/lang/String;

    .line 34
    sget-boolean v0, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    iput-boolean v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->DBG:Z

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->OPTION:I

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->STATUS:I

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->EHRPD_NAI:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->EHRPD_PRIVATE_UID:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->EHRPD_PUBLIC_UID:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->mCmdDataList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public AssignOption(I)V
    .locals 8
    .parameter "iParameter"

    .prologue
    const/4 v7, 0x0

    .line 53
    const/4 v0, 0x1

    .line 54
    .local v0, bResult:Z
    invoke-static {}, Lcom/htc/android/epst/internal/RecordList;->getSingleton()Lcom/htc/android/epst/internal/RecordList;

    move-result-object v2

    .line 55
    .local v2, nRecordList:Lcom/htc/android/epst/internal/RecordList;
    const/16 v4, 0xf6

    invoke-virtual {v2, v4, v7, v7}, Lcom/htc/android/epst/internal/RecordList;->getByIdandIndex(III)Lcom/htc/android/epst/internal/Record;

    move-result-object v3

    .line 56
    .local v3, record:Lcom/htc/android/epst/internal/Record;
    const-string v4, "%x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, nParameter:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-static {v1, v4}, Lcom/htc/android/epst/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 58
    iget-boolean v4, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->DBG:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bAssignParameter.iParameter:(int)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (hex):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    iput-object v1, v3, Lcom/htc/android/epst/internal/Record;->customAttr:Ljava/lang/String;

    .line 60
    iput p1, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->OPTION:I

    .line 61
    iget-boolean v4, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->DBG:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "record.customAttr:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/htc/android/epst/internal/Record;->customAttr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_1
    return-void
.end method

.method public generateCmdDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->mCmdDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 193
    iget-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->mCmdDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEHRPDNAI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->EHRPD_NAI:Ljava/lang/String;

    return-object v0
.end method

.method public getEHRPDPrivateUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->EHRPD_PRIVATE_UID:Ljava/lang/String;

    return-object v0
.end method

.method public getEHRPDPublicUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->EHRPD_PUBLIC_UID:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 14

    .prologue
    const v13, 0x7f040055

    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x4

    .line 72
    iget-boolean v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->DBG:Z

    if-eqz v7, :cond_0

    .line 73
    iget-object v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "read:IN.mCmdToBeParsed:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v5

    .line 76
    .local v5, parser:Lcom/htc/android/epst/internal/CmdParser;
    iget-object v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v5, v7, v12, v11}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, optionHex:Ljava/lang/String;
    const/4 v2, 0x0

    .line 80
    .local v2, nOption:I
    const/16 v7, 0x10

    :try_start_0
    invoke-static {v4, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 85
    :goto_0
    iget v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->OPTION:I

    if-eq v2, v7, :cond_1

    .line 86
    iget-object v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "nOption != OPTION!!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "!="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->OPTION:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :goto_1
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/lang/Exception;
    iget-object v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Integer.parseInt(OPTION, 16)ERROR!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->OPTION:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    .line 96
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v7

    invoke-virtual {v7, v13}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->EHRPD_NAI:Ljava/lang/String;

    .line 97
    iget-boolean v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->DBG:Z

    if-eqz v7, :cond_2

    .line 98
    iget-object v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->LOG_TAG:Ljava/lang/String;

    const-string v8, "DM_CMD_OPT_EHRPD_NAI.IN"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_2
    const/4 v1, 0x0

    .line 103
    .local v1, nLen:I
    :try_start_1
    iget-object v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v8, 0x2

    const/4 v9, 0x4

    invoke-virtual {v5, v7, v8, v9}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 108
    :goto_2
    sget v7, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->MAX_LEN:I

    if-le v1, v7, :cond_3

    .line 109
    sget v1, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->MAX_LEN:I

    .line 110
    iget-object v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Get length of eHRPD NAI is larger than max limit.Set max limit to the length."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_3
    if-lez v1, :cond_6

    .line 114
    iget-object v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->mCmdToBeParsed:Ljava/lang/String;

    mul-int/lit8 v8, v1, 0x2

    add-int/lit8 v8, v8, 0x4

    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/android/epst/Utility;->StringToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->EHRPD_NAI:Ljava/lang/String;

    .line 119
    :goto_3
    iget-boolean v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->DBG:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "eHRPD NAI="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->EHRPD_NAI:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .end local v1           #nLen:I
    :cond_4
    :goto_4
    iget-boolean v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->DBG:Z

    if-eqz v7, :cond_5

    .line 181
    iget-object v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "read:OUT-mCmdToBeParsed:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_5
    invoke-static {}, Lcom/htc/android/epst/internal/RecordList;->getSingleton()Lcom/htc/android/epst/internal/RecordList;

    move-result-object v3

    .line 185
    .local v3, nRecordList:Lcom/htc/android/epst/internal/RecordList;
    const/16 v7, 0xf6

    invoke-virtual {v3, v7, v12, v12}, Lcom/htc/android/epst/internal/RecordList;->getByIdandIndex(III)Lcom/htc/android/epst/internal/Record;

    move-result-object v6

    .line 186
    .local v6, record:Lcom/htc/android/epst/internal/Record;
    iput-boolean v12, v6, Lcom/htc/android/epst/internal/Record;->isSend:Z

    goto/16 :goto_1

    .line 104
    .end local v3           #nRecordList:Lcom/htc/android/epst/internal/RecordList;
    .end local v6           #record:Lcom/htc/android/epst/internal/Record;
    .restart local v1       #nLen:I
    :catch_1
    move-exception v0

    .line 105
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get nLen error!!No digital format.parser.getResult(mCmdToBeParsed, 2, 4)="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v5, v9, v11, v10}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 116
    .end local v0           #e:Ljava/lang/Exception;
    :cond_6
    const-string v7, ""

    iput-object v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->EHRPD_NAI:Ljava/lang/String;

    .line 117
    iget-object v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->LOG_TAG:Ljava/lang/String;

    const-string v8, "EHRPD_NAI=null.The data length is zero."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 121
    .end local v1           #nLen:I
    :cond_7
    iget v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->OPTION:I

    if-ne v7, v11, :cond_b

    .line 123
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v7

    invoke-virtual {v7, v13}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->EHRPD_PRIVATE_UID:Ljava/lang/String;

    .line 124
    iget-boolean v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->DBG:Z

    if-eqz v7, :cond_8

    .line 125
    iget-object v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->LOG_TAG:Ljava/lang/String;

    const-string v8, "DM_CMD_OPT_EHRPD_PRIVATE_UID.IN"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_8
    const/4 v1, 0x0

    .line 130
    .restart local v1       #nLen:I
    :try_start_2
    iget-object v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v8, 0x2

    const/4 v9, 0x4

    invoke-virtual {v5, v7, v8, v9}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    .line 135
    :goto_5
    sget v7, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->MAX_LEN:I

    if-le v1, v7, :cond_9

    .line 136
    sget v1, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->MAX_LEN:I

    .line 137
    iget-object v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Get length of eHRPD private UID is larger than max limit.Set max limit to the length."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_9
    if-lez v1, :cond_a

    .line 141
    iget-object v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->mCmdToBeParsed:Ljava/lang/String;

    mul-int/lit8 v8, v1, 0x2

    add-int/lit8 v8, v8, 0x4

    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/android/epst/Utility;->StringToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->EHRPD_PRIVATE_UID:Ljava/lang/String;

    .line 146
    :goto_6
    iget-boolean v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->DBG:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "eHRPD private UID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->EHRPD_PRIVATE_UID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 131
    :catch_2
    move-exception v0

    .line 132
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get nLen error!!No digital format.parser.getResult(mCmdToBeParsed, 2, 4)="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v5, v9, v11, v10}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 143
    .end local v0           #e:Ljava/lang/Exception;
    :cond_a
    const-string v7, ""

    iput-object v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->EHRPD_PRIVATE_UID:Ljava/lang/String;

    .line 144
    iget-object v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->LOG_TAG:Ljava/lang/String;

    const-string v8, "EHRPD_PRIVATE_UID=null.The data length is zero."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 148
    .end local v1           #nLen:I
    :cond_b
    iget v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->OPTION:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_10

    .line 150
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v7

    invoke-virtual {v7, v13}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->EHRPD_PUBLIC_UID:Ljava/lang/String;

    .line 151
    iget-boolean v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->DBG:Z

    if-eqz v7, :cond_c

    .line 152
    iget-object v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->LOG_TAG:Ljava/lang/String;

    const-string v8, "DM_CMD_OPT_EHRPD_PUBLIC.IN"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_c
    const/4 v1, 0x0

    .line 157
    .restart local v1       #nLen:I
    :try_start_3
    iget-object v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v8, 0x2

    const/4 v9, 0x4

    invoke-virtual {v5, v7, v8, v9}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v1

    .line 162
    :goto_7
    sget v7, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->MAX_LEN:I

    if-le v1, v7, :cond_d

    .line 163
    sget v1, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->MAX_LEN:I

    .line 164
    iget-object v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Get length of eHRPD public UID is larger than max limit.Set max limit to the length."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_d
    iget-boolean v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->DBG:Z

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "eHRPD public UID.nLen="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_e
    if-lez v1, :cond_f

    .line 168
    iget-object v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->mCmdToBeParsed:Ljava/lang/String;

    mul-int/lit8 v8, v1, 0x2

    add-int/lit8 v8, v8, 0x4

    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/android/epst/Utility;->StringToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->EHRPD_PUBLIC_UID:Ljava/lang/String;

    .line 173
    :goto_8
    iget-boolean v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->DBG:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "eHRPD public UID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->EHRPD_PUBLIC_UID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 158
    :catch_3
    move-exception v0

    .line 159
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get nLen error!!No digital format.parser.getResult(mCmdToBeParsed, 2, 4)="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v5, v9, v11, v10}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 170
    .end local v0           #e:Ljava/lang/Exception;
    :cond_f
    const-string v7, ""

    iput-object v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->EHRPD_PUBLIC_UID:Ljava/lang/String;

    .line 171
    iget-object v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->LOG_TAG:Ljava/lang/String;

    const-string v8, "EHRPD_PUBLIC_UID=null.The data length is zero."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 177
    .end local v1           #nLen:I
    :cond_10
    iget-object v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Not support other parameter!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method
