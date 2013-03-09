.class public Lcom/htc/android/epst/dmcmd/DM_STATUS;
.super Lcom/htc/android/epst/dmcmd/DmCmdBase;
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
    invoke-direct {p0}, Lcom/htc/android/epst/dmcmd/DmCmdBase;-><init>()V

    .line 8
    const-string v0, "000000"

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->Reserved1:Ljava/lang/String;

    .line 9
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->ESN:Ljava/lang/String;

    .line 10
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->RFMode:Ljava/lang/String;

    .line 11
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->MIN1_Analog:Ljava/lang/String;

    .line 12
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->MIN1_CDMA:Ljava/lang/String;

    .line 13
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->MIN2_Analog:Ljava/lang/String;

    .line 14
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->MIN2_CDMA:Ljava/lang/String;

    .line 15
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->Reserved2:Ljava/lang/String;

    .line 16
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->CDMA_RxState:Ljava/lang/String;

    .line 17
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->CDMA_GoodFrames:Ljava/lang/String;

    .line 18
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->Analog_CorrectedFrames:Ljava/lang/String;

    .line 19
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->Analog_BadFrames:Ljava/lang/String;

    .line 20
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->Analog_WordSyncs:Ljava/lang/String;

    .line 21
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->EntryReason:Ljava/lang/String;

    .line 22
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->CurrentChan:Ljava/lang/String;

    .line 23
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->CDMA_CodeChan:Ljava/lang/String;

    .line 24
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->PilotBase:Ljava/lang/String;

    .line 25
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->SID:Ljava/lang/String;

    .line 26
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->NID:Ljava/lang/String;

    .line 27
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->LocAID:Ljava/lang/String;

    .line 28
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->RSSI:Ljava/lang/String;

    .line 29
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->Power:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCDMA_RxState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->CDMA_RxState:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentChan()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->CurrentChan:Ljava/lang/String;

    return-object v0
.end method

.method public getNID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->NID:Ljava/lang/String;

    return-object v0
.end method

.method public getRFMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->RFMode:Ljava/lang/String;

    return-object v0
.end method

.method public getSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->SID:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 4

    .prologue
    .line 33
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    .line 34
    .local v0, parser:Lcom/htc/android/epst/internal/CmdParser;
    const/4 v1, 0x0

    .line 35
    .local v1, pos:I
    iget-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->Reserved1:Ljava/lang/String;

    .line 36
    add-int/lit8 v1, v1, 0x6

    .line 37
    iget-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0xe

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->ESN:Ljava/lang/String;

    .line 38
    add-int/lit8 v1, v1, 0x8

    .line 39
    iget-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x12

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->RFMode:Ljava/lang/String;

    .line 40
    add-int/lit8 v1, v1, 0x4

    .line 41
    iget-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x1a

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->MIN1_Analog:Ljava/lang/String;

    .line 42
    add-int/lit8 v1, v1, 0x8

    .line 43
    iget-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x22

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->MIN1_CDMA:Ljava/lang/String;

    .line 44
    add-int/lit8 v1, v1, 0x8

    .line 45
    iget-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x26

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->MIN2_Analog:Ljava/lang/String;

    .line 46
    add-int/lit8 v1, v1, 0x4

    .line 47
    iget-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x2a

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->MIN2_CDMA:Ljava/lang/String;

    .line 48
    add-int/lit8 v1, v1, 0x4

    .line 49
    iget-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x2c

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->Reserved2:Ljava/lang/String;

    .line 50
    add-int/lit8 v1, v1, 0x2

    .line 51
    iget-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x30

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->CDMA_RxState:Ljava/lang/String;

    .line 52
    add-int/lit8 v1, v1, 0x4

    .line 53
    iget-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x32

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->CDMA_GoodFrames:Ljava/lang/String;

    .line 54
    add-int/lit8 v1, v1, 0x2

    .line 55
    iget-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x36

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->Analog_CorrectedFrames:Ljava/lang/String;

    .line 56
    add-int/lit8 v1, v1, 0x4

    .line 57
    iget-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x3a

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->Analog_BadFrames:Ljava/lang/String;

    .line 58
    add-int/lit8 v1, v1, 0x4

    .line 59
    iget-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x3e

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->Analog_WordSyncs:Ljava/lang/String;

    .line 60
    add-int/lit8 v1, v1, 0x4

    .line 61
    iget-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x42

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->EntryReason:Ljava/lang/String;

    .line 62
    add-int/lit8 v1, v1, 0x4

    .line 63
    iget-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x46

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->CurrentChan:Ljava/lang/String;

    .line 64
    add-int/lit8 v1, v1, 0x4

    .line 65
    iget-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x48

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->CDMA_CodeChan:Ljava/lang/String;

    .line 66
    add-int/lit8 v1, v1, 0x2

    .line 67
    iget-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x4c

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->PilotBase:Ljava/lang/String;

    .line 68
    add-int/lit8 v1, v1, 0x4

    .line 69
    iget-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x50

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->SID:Ljava/lang/String;

    .line 70
    add-int/lit8 v1, v1, 0x4

    .line 71
    iget-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x54

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->NID:Ljava/lang/String;

    .line 72
    add-int/lit8 v1, v1, 0x4

    .line 73
    iget-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x58

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->LocAID:Ljava/lang/String;

    .line 74
    add-int/lit8 v1, v1, 0x4

    .line 75
    iget-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x5c

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->RSSI:Ljava/lang/String;

    .line 76
    add-int/lit8 v1, v1, 0x4

    .line 77
    iget-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x5e

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_STATUS;->Power:Ljava/lang/String;

    .line 78
    return-void
.end method
