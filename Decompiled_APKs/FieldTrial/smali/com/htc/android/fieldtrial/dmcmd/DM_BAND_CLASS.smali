.class public Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;
.super Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;
.source "DM_BAND_CLASS.java"


# instance fields
.field private BAND_CLASS:Ljava/lang/String;

.field private ESN:Ljava/lang/String;

.field private FREQUENCY:Ljava/lang/String;

.field private IMSI_11_12:Ljava/lang/String;

.field private IMSI_ADDR_NUM:Ljava/lang/String;

.field private IMSI_S:Ljava/lang/String;

.field private IMSI_S1:Ljava/lang/String;

.field private IMSI_S2:Ljava/lang/String;

.field private MCC:Ljava/lang/String;

.field private MC_STATE:Ljava/lang/String;

.field private MC_SUBSTATE:Ljava/lang/String;

.field private MOB_P_REV:Ljava/lang/String;

.field private NID:Ljava/lang/String;

.field private OPERATION_MODE:Ljava/lang/String;

.field private PREV_IN_USE:Ljava/lang/String;

.field private P_REV:Ljava/lang/String;

.field private SID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;-><init>()V

    .line 9
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->ESN:Ljava/lang/String;

    .line 10
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->IMSI_S1:Ljava/lang/String;

    .line 11
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->IMSI_S2:Ljava/lang/String;

    .line 12
    const-string v0, "0000000000000000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->IMSI_S:Ljava/lang/String;

    .line 13
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->IMSI_11_12:Ljava/lang/String;

    .line 14
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->MCC:Ljava/lang/String;

    .line 15
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->IMSI_ADDR_NUM:Ljava/lang/String;

    .line 16
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->SID:Ljava/lang/String;

    .line 17
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->NID:Ljava/lang/String;

    .line 18
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->P_REV:Ljava/lang/String;

    .line 19
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->PREV_IN_USE:Ljava/lang/String;

    .line 20
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->MOB_P_REV:Ljava/lang/String;

    .line 21
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->BAND_CLASS:Ljava/lang/String;

    .line 22
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->FREQUENCY:Ljava/lang/String;

    .line 23
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->OPERATION_MODE:Ljava/lang/String;

    .line 24
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->MC_STATE:Ljava/lang/String;

    .line 25
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->MC_SUBSTATE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBandClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->BAND_CLASS:Ljava/lang/String;

    return-object v0
.end method

.method public getNID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->NID:Ljava/lang/String;

    return-object v0
.end method

.method public getSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->SID:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 5

    .prologue
    const/16 v4, 0x46

    .line 29
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getSingleton()Lcom/htc/android/fieldtrial/internal/CmdParser;

    move-result-object v0

    .line 31
    .local v0, parser:Lcom/htc/android/fieldtrial/internal/CmdParser;
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 32
    const-string v2, "DM_BAND_CLASS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x63.mCmdToBeParsed.length()!=70:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :goto_0
    return-void

    .line 35
    :cond_0
    const/4 v1, 0x0

    .line 36
    .local v1, pos:I
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->ESN:Ljava/lang/String;

    .line 37
    add-int/lit8 v1, v1, 0x8

    .line 38
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->IMSI_S1:Ljava/lang/String;

    .line 39
    add-int/lit8 v1, v1, 0x8

    .line 40
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x14

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->IMSI_S2:Ljava/lang/String;

    .line 41
    add-int/lit8 v1, v1, 0x4

    .line 42
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x24

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->IMSI_S:Ljava/lang/String;

    .line 43
    add-int/lit8 v1, v1, 0x10

    .line 44
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x26

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->IMSI_11_12:Ljava/lang/String;

    .line 45
    add-int/lit8 v1, v1, 0x2

    .line 46
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x2a

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->MCC:Ljava/lang/String;

    .line 47
    add-int/lit8 v1, v1, 0x4

    .line 48
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x2c

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->IMSI_ADDR_NUM:Ljava/lang/String;

    .line 49
    add-int/lit8 v1, v1, 0x2

    .line 50
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x30

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->SID:Ljava/lang/String;

    .line 51
    add-int/lit8 v1, v1, 0x4

    .line 52
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x34

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->NID:Ljava/lang/String;

    .line 53
    add-int/lit8 v1, v1, 0x4

    .line 54
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x36

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->P_REV:Ljava/lang/String;

    .line 55
    add-int/lit8 v1, v1, 0x2

    .line 56
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x38

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->PREV_IN_USE:Ljava/lang/String;

    .line 57
    add-int/lit8 v1, v1, 0x2

    .line 58
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x3a

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->MOB_P_REV:Ljava/lang/String;

    .line 59
    add-int/lit8 v1, v1, 0x2

    .line 60
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x3c

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->BAND_CLASS:Ljava/lang/String;

    .line 61
    add-int/lit8 v1, v1, 0x2

    .line 62
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->FREQUENCY:Ljava/lang/String;

    .line 63
    add-int/lit8 v1, v1, 0x4

    .line 64
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x42

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->OPERATION_MODE:Ljava/lang/String;

    .line 65
    add-int/lit8 v1, v1, 0x2

    .line 66
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x44

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->MC_STATE:Ljava/lang/String;

    .line 67
    add-int/lit8 v1, v1, 0x2

    .line 68
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v4}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_BAND_CLASS;->MC_SUBSTATE:Ljava/lang/String;

    goto/16 :goto_0
.end method
