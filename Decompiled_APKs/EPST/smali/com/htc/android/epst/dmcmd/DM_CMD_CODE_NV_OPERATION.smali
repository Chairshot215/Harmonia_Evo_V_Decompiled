.class public Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;
.super Lcom/htc/android/epst/dmcmd/DmCmdBase;
.source "DM_CMD_CODE_NV_OPERATION.java"


# instance fields
.field private DBG:Z

.field private LOG_TAG:Ljava/lang/String;

.field private gOption:I

.field private nNVPRIChecksum:Ljava/lang/String;

.field private nNVPRIVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/htc/android/epst/dmcmd/DmCmdBase;-><init>()V

    .line 13
    const-string v0, "DM_CMD_CODE_NV_OPERATION"

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->LOG_TAG:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->DBG:Z

    .line 15
    const/16 v0, 0xf0

    iput v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->gOption:I

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->nNVPRIVersion:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->nNVPRIChecksum:Ljava/lang/String;

    return-void
.end method

.method private bCheckCMDStaus(Ljava/lang/String;)Z
    .locals 3
    .parameter "iStatus"

    .prologue
    const/4 v2, 0x1

    .line 75
    const/4 v0, 0x1

    .line 76
    .local v0, bResult:Z
    const-string v1, "01"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 77
    iget-boolean v1, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->DBG:Z

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->LOG_TAG:Ljava/lang/String;

    const-string v2, "bCheckCMDStaus:Get NVMFG PRI version successfully"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    const-string v1, "00"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 81
    const/4 v0, 0x0

    .line 82
    iget-object v1, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->LOG_TAG:Ljava/lang/String;

    const-string v2, "bCheckCMDStaus:Get NVMFG PRI version fail!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 84
    :cond_2
    const/4 v0, 0x0

    .line 85
    iget-object v1, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->LOG_TAG:Ljava/lang/String;

    const-string v2, "bCheckCMDStaus:Input unsupport command status!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public bAssignParameter(I)Z
    .locals 11
    .parameter "iParameter"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 22
    const/4 v0, 0x1

    .line 24
    .local v0, bResult:Z
    invoke-static {}, Lcom/htc/android/epst/internal/RecordList;->getSingleton()Lcom/htc/android/epst/internal/RecordList;

    move-result-object v4

    .line 25
    .local v4, nRecordList:Lcom/htc/android/epst/internal/RecordList;
    const/16 v6, 0xc9

    invoke-virtual {v4, v6, v9, v9}, Lcom/htc/android/epst/internal/RecordList;->getByIdandIndex(III)Lcom/htc/android/epst/internal/Record;

    move-result-object v5

    .line 26
    .local v5, record:Lcom/htc/android/epst/internal/Record;
    const-string v6, "%x"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 28
    .local v3, nParameter:Ljava/lang/String;
    iget-boolean v6, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->DBG:Z

    if-eqz v6, :cond_0

    .line 29
    iget-object v6, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bAssignParameter.iParameter:(int)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (hex):"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 63
    const/4 v0, 0x0

    .line 64
    iget-object v6, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No support this type:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    iput p1, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->gOption:I

    .line 68
    :cond_2
    iget-boolean v6, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->DBG:Z

    if-eqz v6, :cond_3

    .line 69
    iget-object v6, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "record.customAttr:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/htc/android/epst/internal/Record;->customAttr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_3
    return v0

    .line 40
    :sswitch_0
    iput-object v3, v5, Lcom/htc/android/epst/internal/Record;->customAttr:Ljava/lang/String;

    goto :goto_0

    .line 55
    :sswitch_1
    const-string v6, "%x"

    new-array v7, v10, [Ljava/lang/Object;

    const/16 v8, 0x1f50

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, nPRIVersion:Ljava/lang/String;
    const-string v1, "ff"

    .line 57
    .local v1, nOther:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/htc/android/epst/internal/Record;->customAttr:Ljava/lang/String;

    .line 58
    iget-boolean v6, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->DBG:Z

    if-eqz v6, :cond_1

    .line 59
    iget-object v6, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "nPRIVersion:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 32
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x9 -> :sswitch_0
        0xf0 -> :sswitch_1
    .end sparse-switch
.end method

.method public getMFGPRIChecksum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->nNVPRIChecksum:Ljava/lang/String;

    return-object v0
.end method

.method public getMFGPRIVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->nNVPRIVersion:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 10

    .prologue
    const v9, 0x7f04007a

    .line 97
    iget-object v6, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read:IN.mCmdToBeParsed:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v4

    .line 100
    .local v4, parser:Lcom/htc/android/epst/internal/CmdParser;
    iget v6, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->gOption:I

    const/16 v7, 0xf0

    if-ne v6, v7, :cond_3

    .line 102
    const/4 v5, 0x0

    .line 103
    .local v5, pos:I
    const/4 v0, 0x1

    .line 104
    .local v0, bAvailable:Z
    const-string v1, ""

    .line 105
    .local v1, nCMDStatus:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v7, 0x2

    invoke-virtual {v4, v6, v5, v7}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 106
    add-int/lit8 v5, v5, 0x2

    .line 108
    invoke-direct {p0, v1}, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->bCheckCMDStaus(Ljava/lang/String;)Z

    move-result v0

    .line 110
    iget-object v6, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v7, 0x6

    invoke-virtual {v4, v6, v5, v7}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, nPRIID:Ljava/lang/String;
    add-int/lit8 v5, v5, 0x4

    .line 113
    iget-object v6, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v7, 0x8

    invoke-virtual {v4, v6, v5, v7}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, nFF:Ljava/lang/String;
    add-int/lit8 v5, v5, 0x2

    .line 116
    const/4 v6, 0x1

    if-ne v0, v6, :cond_2

    .line 118
    iget-object v6, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v7, 0x18

    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/android/epst/Utility;->StringToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->nNVPRIVersion:Ljava/lang/String;

    .line 119
    add-int/lit8 v5, v5, 0x10

    .line 121
    iget-object v6, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v7, 0x20

    invoke-virtual {v4, v6, v5, v7}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->nNVPRIChecksum:Ljava/lang/String;

    .line 122
    add-int/lit8 v5, v5, 0x8

    .line 131
    :goto_0
    iget-boolean v6, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->DBG:Z

    if-eqz v6, :cond_0

    .line 132
    iget-object v6, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "nCMDStatus:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "nPRIID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " nNVPRIVersion:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->nNVPRIVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " nNVPRIChecksum:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->nNVPRIChecksum:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .end local v0           #bAvailable:Z
    .end local v1           #nCMDStatus:Ljava/lang/String;
    .end local v2           #nFF:Ljava/lang/String;
    .end local v3           #nPRIID:Ljava/lang/String;
    .end local v5           #pos:I
    :cond_0
    :goto_1
    iget-boolean v6, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->DBG:Z

    if-eqz v6, :cond_1

    .line 141
    iget-object v6, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read:OUT-mCmdToBeParsed:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_1
    return-void

    .line 126
    .restart local v0       #bAvailable:Z
    .restart local v1       #nCMDStatus:Ljava/lang/String;
    .restart local v2       #nFF:Ljava/lang/String;
    .restart local v3       #nPRIID:Ljava/lang/String;
    .restart local v5       #pos:I
    :cond_2
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->nNVPRIVersion:Ljava/lang/String;

    .line 127
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->nNVPRIChecksum:Ljava/lang/String;

    goto :goto_0

    .line 137
    .end local v0           #bAvailable:Z
    .end local v1           #nCMDStatus:Ljava/lang/String;
    .end local v2           #nFF:Ljava/lang/String;
    .end local v3           #nPRIID:Ljava/lang/String;
    .end local v5           #pos:I
    :cond_3
    iget-object v6, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Not support other parameter!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
