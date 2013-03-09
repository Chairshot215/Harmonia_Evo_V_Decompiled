.class public Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;
.super Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;
.source "DM_HDR_RX_INFO.java"


# static fields
.field private static final GET_PDP_CONTEXT_LIST:I


# instance fields
.field private AAAStatus:Ljava/lang/String;

.field private ActiveSetPilotPN:Ljava/lang/String;

.field private BandClass:I

.field private ChannelAndBand1:Ljava/lang/String;

.field private ChannelAndBand2:Ljava/lang/String;

.field private ChannelNumber:I

.field private ChannelPER:Ljava/lang/String;

.field private CurrentIpAddress:Ljava/lang/String;

.field private DBG:Z

.field private DataSessionState:Ljava/lang/String;

.field private EVDOState:Ljava/lang/String;

.field private HdrSessionState:Ljava/lang/String;

.field private LOG_TAG:Ljava/lang/String;

.field private MACIndex:Ljava/lang/String;

.field private RequestedDataRate:F

.field private RequestedDataRateBytes:Ljava/lang/String;

.field private RxPower:Ljava/lang/String;

.field private RxSignalStrength:Ljava/lang/String;

.field private SINR:Ljava/lang/String;

.field private SectorID:Ljava/lang/String;

.field private SubnetColorCode:Ljava/lang/String;

.field private UATI:Ljava/lang/String;

.field private UATI024:[Ljava/lang/String;

.field private UATI104:[Ljava/lang/String;

.field mReqDataRateTable:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;-><init>()V

    .line 19
    const-string v0, "DM_HDR_RX_INFO"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->LOG_TAG:Ljava/lang/String;

    .line 20
    sget-boolean v0, Lcom/htc/android/fieldtrial/FieldTrial;->DBG:Z

    iput-boolean v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->DBG:Z

    .line 21
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->ChannelAndBand1:Ljava/lang/String;

    .line 22
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->ChannelAndBand2:Ljava/lang/String;

    .line 26
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->SubnetColorCode:Ljava/lang/String;

    .line 28
    const-string v0, "00000000000000000000000000000000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->UATI:Ljava/lang/String;

    .line 29
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->UATI104:[Ljava/lang/String;

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->UATI024:[Ljava/lang/String;

    .line 32
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->ActiveSetPilotPN:Ljava/lang/String;

    .line 34
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->RxSignalStrength:Ljava/lang/String;

    .line 36
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->RxPower:Ljava/lang/String;

    .line 38
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->ChannelPER:Ljava/lang/String;

    .line 40
    const-string v0, "0000000000000000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->RequestedDataRateBytes:Ljava/lang/String;

    .line 44
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->HdrSessionState:Ljava/lang/String;

    .line 46
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->DataSessionState:Ljava/lang/String;

    .line 48
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->CurrentIpAddress:Ljava/lang/String;

    .line 50
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->AAAStatus:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->SectorID:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->MACIndex:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->SINR:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->EVDOState:Ljava/lang/String;

    .line 64
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->mReqDataRateTable:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x96t 0x0t 0x0t
        0x0t 0x2ct 0x1t 0x0t
        0x0t 0x58t 0x2t 0x0t
        0x0t 0xb0t 0x4t 0x0t
        0x0t 0xb0t 0x4t 0x0t
        0x0t 0x60t 0x9t 0x0t
        0x0t 0x60t 0x9t 0x0t
        0x0t 0x10t 0xet 0x0t
        0x0t 0xc0t 0x12t 0x0t
        0x0t 0xc0t 0x12t 0x0t
        0x0t 0x20t 0x1ct 0x0t
        0x0t 0x80t 0x25t 0x0t
        0x0t 0x70t 0x17t 0x0t
        0x0t 0xe0t 0x2et 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private getCurrentIP()V
    .locals 1

    .prologue
    .line 393
    const-string v0, "ril.current.ip.address"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->CurrentIpAddress:Ljava/lang/String;

    .line 394
    return-void
.end method


# virtual methods
.method public getAAAStatus()I
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->AAAStatus:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getActiveSetPilotPN()I
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->ActiveSetPilotPN:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getBandClass()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->BandClass:I

    return v0
.end method

.method public getChannelNumber()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->ChannelNumber:I

    return v0
.end method

.method public getChannelPER()I
    .locals 4

    .prologue
    .line 126
    const/4 v1, 0x0

    .line 128
    .local v1, value:I
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->ChannelPER:Ljava/lang/String;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 132
    :goto_0
    return v1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getChannelPER:parseint fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCurrentIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->CurrentIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSessionState()I
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->DataSessionState:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEVDOState()I
    .locals 5

    .prologue
    .line 185
    const/4 v1, 0x0

    .line 187
    .local v1, evdostate:I
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->EVDOState:Ljava/lang/String;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 191
    :goto_0
    return v1

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getHdrSessionState()I
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->HdrSessionState:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMACIndex()I
    .locals 5

    .prologue
    .line 165
    const/4 v1, 0x0

    .line 167
    .local v1, maxindex:I
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->MACIndex:Ljava/lang/String;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 171
    :goto_0
    return v1

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getRequestedDataRate()F
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->RequestedDataRate:F

    return v0
.end method

.method public getRxPower()F
    .locals 6

    .prologue
    .line 113
    const/4 v2, 0x0

    .line 115
    .local v2, value:F
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->RxPower:Ljava/lang/String;

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-short v1, v3

    .line 116
    .local v1, nValue:S
    iget-object v3, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRxPower:nValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    int-to-float v2, v1

    .line 121
    .end local v1           #nValue:S
    :goto_0
    const/high16 v3, 0x4380

    div-float/2addr v2, v3

    .line 122
    return v2

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->LOG_TAG:Ljava/lang/String;

    const-string v4, "getRxPower:parseInt fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getRxSignalStrength()I
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->RxSignalStrength:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSINR()I
    .locals 5

    .prologue
    .line 175
    const/4 v1, 0x0

    .line 177
    .local v1, sinr:I
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->SINR:Ljava/lang/String;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 181
    :goto_0
    return v1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSectorID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get sectorid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->SectorID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->SectorID:Ljava/lang/String;

    return-object v0
.end method

.method public getSubnetColorCode()I
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->SubnetColorCode:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUATI024()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->UATI024:[Ljava/lang/String;

    return-object v0
.end method

.method public getUATI104()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->UATI104:[Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 15

    .prologue
    const/16 v14, 0x10

    .line 242
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getSingleton()Lcom/htc/android/fieldtrial/internal/CmdParser;

    move-result-object v7

    .line 243
    .local v7, parser:Lcom/htc/android/fieldtrial/internal/CmdParser;
    const/4 v1, 0x0

    .line 268
    .local v1, beginPos:I
    iget-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v12, 0x2

    invoke-virtual {v7, v11, v1, v12}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->ChannelAndBand1:Ljava/lang/String;

    .line 269
    add-int/lit8 v1, v1, 0x2

    .line 270
    iget-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v12, 0x4

    invoke-virtual {v7, v11, v1, v12}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->ChannelAndBand2:Ljava/lang/String;

    .line 271
    add-int/lit8 v1, v1, 0x2

    .line 276
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->ChannelAndBand2:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->ChannelAndBand1:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, Channel1:Ljava/lang/String;
    invoke-static {v0, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 279
    .local v10, value1:I
    and-int/lit16 v11, v10, 0x7ff

    iput v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->ChannelNumber:I

    .line 282
    const v11, 0xf800

    and-int/2addr v11, v10

    shr-int/lit8 v11, v11, 0xb

    iput v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->BandClass:I

    .line 287
    iget-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v12, 0x6

    invoke-virtual {v7, v11, v1, v12}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->SubnetColorCode:Ljava/lang/String;

    .line 288
    add-int/lit8 v1, v1, 0x2

    .line 291
    iget-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v12, 0x26

    invoke-virtual {v7, v11, v1, v12}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->UATI:Ljava/lang/String;

    .line 292
    iget-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->UATI:Ljava/lang/String;

    invoke-static {v11}, Lcom/htc/android/fieldtrial/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->UATI:Ljava/lang/String;

    .line 293
    add-int/lit8 v1, v1, 0x20

    .line 295
    const/4 v8, 0x0

    .line 296
    .local v8, pos:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->UATI104:[Ljava/lang/String;

    array-length v11, v11

    if-ge v6, v11, :cond_0

    .line 297
    iget-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->UATI104:[Ljava/lang/String;

    iget-object v12, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->UATI:Ljava/lang/String;

    add-int/lit8 v13, v8, 0x2

    invoke-virtual {v7, v12, v8, v13}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    .line 298
    add-int/lit8 v8, v8, 0x2

    .line 296
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 300
    :cond_0
    const/16 v8, 0x1a

    .line 301
    const/4 v6, 0x0

    :goto_1
    iget-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->UATI024:[Ljava/lang/String;

    array-length v11, v11

    if-ge v6, v11, :cond_1

    .line 302
    iget-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->UATI024:[Ljava/lang/String;

    iget-object v12, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->UATI:Ljava/lang/String;

    add-int/lit8 v13, v8, 0x2

    invoke-virtual {v7, v12, v8, v13}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    .line 303
    add-int/lit8 v8, v8, 0x2

    .line 301
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 306
    :cond_1
    iget-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v12, 0x2a

    invoke-virtual {v7, v11, v1, v12}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->ActiveSetPilotPN:Ljava/lang/String;

    .line 307
    add-int/lit8 v1, v1, 0x4

    .line 309
    iget-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v12, 0x2e

    invoke-virtual {v7, v11, v1, v12}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->RxSignalStrength:Ljava/lang/String;

    .line 310
    add-int/lit8 v1, v1, 0x4

    .line 312
    iget-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v12, 0x32

    invoke-virtual {v7, v11, v1, v12}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->RxPower:Ljava/lang/String;

    .line 313
    add-int/lit8 v1, v1, 0x4

    .line 315
    iget-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v12, 0x36

    invoke-virtual {v7, v11, v1, v12}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->ChannelPER:Ljava/lang/String;

    .line 316
    add-int/lit8 v1, v1, 0x4

    .line 321
    iget-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v12, 0x46

    invoke-virtual {v7, v11, v1, v12}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->RequestedDataRateBytes:Ljava/lang/String;

    .line 322
    iget-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->RequestedDataRateBytes:Ljava/lang/String;

    invoke-static {v11}, Lcom/htc/android/fieldtrial/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->RequestedDataRateBytes:Ljava/lang/String;

    .line 323
    add-int/lit8 v1, v1, 0x10

    .line 324
    const/4 v2, 0x0

    .line 325
    .local v2, btValue:I
    const/4 v3, 0x0

    .line 326
    .local v3, dwValue:I
    const/4 v6, 0x0

    :goto_2
    const/16 v11, 0x8

    if-ge v6, v11, :cond_2

    .line 327
    iget-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->RequestedDataRateBytes:Ljava/lang/String;

    mul-int/lit8 v12, v6, 0x2

    mul-int/lit8 v13, v6, 0x2

    add-int/lit8 v13, v13, 0x2

    invoke-virtual {v7, v11, v12, v13}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    .line 328
    .local v5, hexStr:Ljava/lang/String;
    invoke-static {v5, v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 329
    .local v9, value:I
    and-int/lit8 v2, v9, 0xf

    .line 330
    iget-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->mReqDataRateTable:[I

    aget v11, v11, v2

    add-int/2addr v3, v11

    .line 331
    shr-int/lit8 v2, v9, 0x4

    .line 332
    iget-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->mReqDataRateTable:[I

    aget v11, v11, v2

    add-int/2addr v3, v11

    .line 326
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 335
    .end local v5           #hexStr:Ljava/lang/String;
    .end local v9           #value:I
    :cond_2
    div-int/lit8 v11, v3, 0x10

    int-to-float v11, v11

    const/high16 v12, 0x447a

    div-float/2addr v11, v12

    iput v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->RequestedDataRate:F

    .line 338
    iget-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v12, 0x48

    invoke-virtual {v7, v11, v1, v12}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->HdrSessionState:Ljava/lang/String;

    .line 339
    add-int/lit8 v1, v1, 0x2

    .line 341
    iget-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v12, 0x4a

    invoke-virtual {v7, v11, v1, v12}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->DataSessionState:Ljava/lang/String;

    .line 342
    add-int/lit8 v1, v1, 0x2

    .line 344
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->getCurrentIP()V

    .line 346
    add-int/lit8 v1, v1, 0x8

    .line 348
    :try_start_0
    iget-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v12, 0x54

    invoke-virtual {v7, v11, v1, v12}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->AAAStatus:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_3
    add-int/lit8 v1, v1, 0x2

    .line 356
    :try_start_1
    iget-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v12, 0x74

    invoke-virtual {v11, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->SectorID:Ljava/lang/String;

    .line 357
    iget-boolean v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->DBG:Z

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SectorID="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->SectorID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 363
    :cond_3
    :goto_4
    add-int/lit8 v1, v1, 0x20

    .line 365
    :try_start_2
    iget-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v12, 0x76

    invoke-virtual {v7, v11, v1, v12}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->MACIndex:Ljava/lang/String;

    .line 366
    iget-boolean v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->DBG:Z

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MACIndex="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->MACIndex:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 372
    :cond_4
    :goto_5
    add-int/lit8 v1, v1, 0x2

    .line 374
    :try_start_3
    iget-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v12, 0x78

    invoke-virtual {v7, v11, v1, v12}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->SINR:Ljava/lang/String;

    .line 375
    iget-boolean v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->DBG:Z

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SINR="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->SINR:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 381
    :cond_5
    :goto_6
    add-int/lit8 v1, v1, 0x2

    .line 383
    :try_start_4
    iget-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v12, 0x7a

    invoke-virtual {v7, v11, v1, v12}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->EVDOState:Ljava/lang/String;

    .line 384
    iget-boolean v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->DBG:Z

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "EVDOState="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->EVDOState:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 390
    :cond_6
    :goto_7
    return-void

    .line 349
    :catch_0
    move-exception v4

    .line 350
    .local v4, e:Ljava/lang/Exception;
    const-string v11, "0"

    iput-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->AAAStatus:Ljava/lang/String;

    .line 351
    iget-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->LOG_TAG:Ljava/lang/String;

    const-string v12, "Can not get AAA status caused by not enough lenght of raw data.WSD should phase in new formation to send Active Set Pilot PN"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 358
    .end local v4           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 359
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v11, "0"

    iput-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->SectorID:Ljava/lang/String;

    .line 360
    iget-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Can not get SectorID.set SectorID="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->SectorID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 367
    .end local v4           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 368
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v11, "0"

    iput-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->MACIndex:Ljava/lang/String;

    .line 369
    iget-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Can not get MACIndex.set MACIndex="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->MACIndex:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 376
    .end local v4           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v4

    .line 377
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v11, "0"

    iput-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->SINR:Ljava/lang/String;

    .line 378
    iget-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Can not get SINR.set SINR="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->SINR:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 385
    .end local v4           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v4

    .line 386
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v11, "0"

    iput-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->EVDOState:Ljava/lang/String;

    .line 387
    iget-object v11, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Can not get EVDOState.set EVDOState="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->EVDOState:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7
.end method
