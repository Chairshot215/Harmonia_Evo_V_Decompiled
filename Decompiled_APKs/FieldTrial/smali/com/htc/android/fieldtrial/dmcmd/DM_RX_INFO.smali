.class public Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;
.super Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;
.source "DM_RX_INFO.java"


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private PRevInUse:Ljava/lang/String;

.field private PilotPN:Ljava/lang/String;

.field private RxEcIo:Ljava/lang/String;

.field private RxFER:Ljava/lang/String;

.field private RxPower:Ljava/lang/String;

.field private ServiceOP:Ljava/lang/String;

.field private TxAdj:Ljava/lang/String;

.field private cdma_gps_latitude:Ljava/lang/String;

.field private cdma_gps_longitude:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;-><init>()V

    .line 10
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->ServiceOP:Ljava/lang/String;

    .line 11
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->RxPower:Ljava/lang/String;

    .line 12
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->RxEcIo:Ljava/lang/String;

    .line 13
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->RxFER:Ljava/lang/String;

    .line 14
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->TxAdj:Ljava/lang/String;

    .line 15
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->PRevInUse:Ljava/lang/String;

    .line 17
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->PilotPN:Ljava/lang/String;

    .line 23
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->cdma_gps_latitude:Ljava/lang/String;

    .line 24
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->cdma_gps_longitude:Ljava/lang/String;

    .line 37
    const-string v0, "DM_RX_INFO"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->LOG_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->cdma_gps_latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->cdma_gps_longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getPRevInUse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->PRevInUse:Ljava/lang/String;

    return-object v0
.end method

.method public getPilotPN()I
    .locals 5

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 117
    .local v1, pilotPN:I
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->PilotPN:Ljava/lang/String;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 121
    :goto_0
    return v1

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getRxEcIo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->RxEcIo:Ljava/lang/String;

    return-object v0
.end method

.method public getRxFER()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->RxFER:Ljava/lang/String;

    return-object v0
.end method

.method public getRxPower()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->RxPower:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceOP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->ServiceOP:Ljava/lang/String;

    return-object v0
.end method

.method public getTxAdj()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->TxAdj:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 8

    .prologue
    const/16 v7, 0x28

    const/16 v6, 0x1e

    const/16 v5, 0x14

    .line 40
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getSingleton()Lcom/htc/android/fieldtrial/internal/CmdParser;

    move-result-object v0

    .line 50
    .local v0, parser:Lcom/htc/android/fieldtrial/internal/CmdParser;
    const/4 v1, 0x0

    .line 51
    .local v1, pos:I
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->ServiceOP:Ljava/lang/String;

    .line 52
    add-int/lit8 v1, v1, 0x4

    .line 53
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->RxPower:Ljava/lang/String;

    .line 54
    add-int/lit8 v1, v1, 0x4

    .line 55
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->RxEcIo:Ljava/lang/String;

    .line 56
    add-int/lit8 v1, v1, 0x2

    .line 57
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0xc

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->RxFER:Ljava/lang/String;

    .line 58
    add-int/lit8 v1, v1, 0x2

    .line 59
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0xe

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->TxAdj:Ljava/lang/String;

    .line 60
    add-int/lit8 v1, v1, 0x2

    .line 61
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->PRevInUse:Ljava/lang/String;

    .line 63
    add-int/lit8 v1, v1, 0x2

    .line 69
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCmdToBeParsed ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v5, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v5}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->PilotPN:Ljava/lang/String;

    .line 75
    add-int/lit8 v1, v1, 0x4

    .line 77
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v6, :cond_0

    .line 80
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v6}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->cdma_gps_latitude:Ljava/lang/String;

    .line 81
    add-int/lit8 v1, v1, 0xa

    .line 83
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v7, :cond_0

    .line 86
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v7}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->cdma_gps_longitude:Ljava/lang/String;

    goto :goto_0
.end method
