.class public Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;
.super Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;
.source "DM_STATUS.java"


# instance fields
.field private Analog_BadFrames:Ljava/lang/String;

.field private Analog_CorrectedFrames:Ljava/lang/String;

.field private Analog_WordSyncs:Ljava/lang/String;

.field private CDMA_CodeChan:Ljava/lang/String;

.field private CDMA_GoodFrames:Ljava/lang/String;

.field private CDMA_RxState:Ljava/lang/String;

.field private CurrentChan:Ljava/lang/String;

.field private ESN:Ljava/lang/String;

.field private EntryReason:Ljava/lang/String;

.field private LocAID:Ljava/lang/String;

.field private MIN1_Analog:Ljava/lang/String;

.field private MIN1_CDMA:Ljava/lang/String;

.field private MIN2_Analog:Ljava/lang/String;

.field private MIN2_CDMA:Ljava/lang/String;

.field private NID:Ljava/lang/String;

.field private PilotBase:Ljava/lang/String;

.field private Power:Ljava/lang/String;

.field private RFMode:Ljava/lang/String;

.field private RSSI:Ljava/lang/String;

.field private Reserved1:Ljava/lang/String;

.field private Reserved2:Ljava/lang/String;

.field private SID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;-><init>()V

    .line 8
    const-string v0, "000000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->Reserved1:Ljava/lang/String;

    .line 9
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->ESN:Ljava/lang/String;

    .line 10
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->RFMode:Ljava/lang/String;

    .line 11
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->MIN1_Analog:Ljava/lang/String;

    .line 12
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->MIN1_CDMA:Ljava/lang/String;

    .line 13
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->MIN2_Analog:Ljava/lang/String;

    .line 14
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->MIN2_CDMA:Ljava/lang/String;

    .line 15
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->Reserved2:Ljava/lang/String;

    .line 16
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->CDMA_RxState:Ljava/lang/String;

    .line 17
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->CDMA_GoodFrames:Ljava/lang/String;

    .line 18
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->Analog_CorrectedFrames:Ljava/lang/String;

    .line 19
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->Analog_BadFrames:Ljava/lang/String;

    .line 20
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->Analog_WordSyncs:Ljava/lang/String;

    .line 21
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->EntryReason:Ljava/lang/String;

    .line 22
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->CurrentChan:Ljava/lang/String;

    .line 23
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->CDMA_CodeChan:Ljava/lang/String;

    .line 24
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->PilotBase:Ljava/lang/String;

    .line 25
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->SID:Ljava/lang/String;

    .line 26
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->NID:Ljava/lang/String;

    .line 27
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->LocAID:Ljava/lang/String;

    .line 28
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->RSSI:Ljava/lang/String;

    .line 29
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->Power:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCDMA_RxState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->CDMA_RxState:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentChan()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->CurrentChan:Ljava/lang/String;

    return-object v0
.end method

.method public getNID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->NID:Ljava/lang/String;

    return-object v0
.end method

.method public getRFMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->RFMode:Ljava/lang/String;

    return-object v0
.end method

.method public getSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->SID:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 5

    .prologue
    const/16 v4, 0x5e

    .line 33
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getSingleton()Lcom/htc/android/fieldtrial/internal/CmdParser;

    move-result-object v0

    .line 35
    .local v0, parser:Lcom/htc/android/fieldtrial/internal/CmdParser;
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 36
    const-string v2, "DM_STATUS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x0C.mCmdToBeParsed.length()!=94:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_0
    return-void

    .line 39
    :cond_0
    const/4 v1, 0x0

    .line 40
    .local v1, pos:I
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->Reserved1:Ljava/lang/String;

    .line 41
    add-int/lit8 v1, v1, 0x6

    .line 42
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0xe

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->ESN:Ljava/lang/String;

    .line 43
    add-int/lit8 v1, v1, 0x8

    .line 44
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x12

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->RFMode:Ljava/lang/String;

    .line 45
    add-int/lit8 v1, v1, 0x4

    .line 46
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x1a

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->MIN1_Analog:Ljava/lang/String;

    .line 47
    add-int/lit8 v1, v1, 0x8

    .line 48
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x22

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->MIN1_CDMA:Ljava/lang/String;

    .line 49
    add-int/lit8 v1, v1, 0x8

    .line 50
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x26

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->MIN2_Analog:Ljava/lang/String;

    .line 51
    add-int/lit8 v1, v1, 0x4

    .line 52
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x2a

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->MIN2_CDMA:Ljava/lang/String;

    .line 53
    add-int/lit8 v1, v1, 0x4

    .line 54
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x2c

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->Reserved2:Ljava/lang/String;

    .line 55
    add-int/lit8 v1, v1, 0x2

    .line 56
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x30

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->CDMA_RxState:Ljava/lang/String;

    .line 57
    add-int/lit8 v1, v1, 0x4

    .line 58
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x32

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->CDMA_GoodFrames:Ljava/lang/String;

    .line 59
    add-int/lit8 v1, v1, 0x2

    .line 60
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x36

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->Analog_CorrectedFrames:Ljava/lang/String;

    .line 61
    add-int/lit8 v1, v1, 0x4

    .line 62
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x3a

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->Analog_BadFrames:Ljava/lang/String;

    .line 63
    add-int/lit8 v1, v1, 0x4

    .line 64
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x3e

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->Analog_WordSyncs:Ljava/lang/String;

    .line 65
    add-int/lit8 v1, v1, 0x4

    .line 66
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x42

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->EntryReason:Ljava/lang/String;

    .line 67
    add-int/lit8 v1, v1, 0x4

    .line 68
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x46

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->CurrentChan:Ljava/lang/String;

    .line 69
    add-int/lit8 v1, v1, 0x4

    .line 70
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x48

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->CDMA_CodeChan:Ljava/lang/String;

    .line 71
    add-int/lit8 v1, v1, 0x2

    .line 72
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x4c

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->PilotBase:Ljava/lang/String;

    .line 73
    add-int/lit8 v1, v1, 0x4

    .line 74
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x50

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->SID:Ljava/lang/String;

    .line 75
    add-int/lit8 v1, v1, 0x4

    .line 76
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x54

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->NID:Ljava/lang/String;

    .line 77
    add-int/lit8 v1, v1, 0x4

    .line 78
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x58

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->LocAID:Ljava/lang/String;

    .line 79
    add-int/lit8 v1, v1, 0x4

    .line 80
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x5c

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->RSSI:Ljava/lang/String;

    .line 81
    add-int/lit8 v1, v1, 0x4

    .line 82
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v4}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->Power:Ljava/lang/String;

    goto/16 :goto_0
.end method
