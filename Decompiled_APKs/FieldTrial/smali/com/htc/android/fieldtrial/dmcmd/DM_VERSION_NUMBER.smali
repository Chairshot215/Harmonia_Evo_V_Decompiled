.class public Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;
.super Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;
.source "DM_VERSION_NUMBER.java"


# instance fields
.field private CompDate:Ljava/lang/String;

.field private CompTime:Ljava/lang/String;

.field private MobCaiRev:Ljava/lang/String;

.field private MobFirmRev:Ljava/lang/String;

.field private MobModel:Ljava/lang/String;

.field private MsmVer:Ljava/lang/String;

.field private RelDate:Ljava/lang/String;

.field private RelTime:Ljava/lang/String;

.field private Scm:Ljava/lang/String;

.field private SlotCycleIndex:Ljava/lang/String;

.field private VerDir:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;-><init>()V

    .line 8
    const-string v0, "0000000000000000000000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;->CompDate:Ljava/lang/String;

    .line 9
    const-string v0, "0000000000000000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;->CompTime:Ljava/lang/String;

    .line 10
    const-string v0, "0000000000000000000000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;->RelDate:Ljava/lang/String;

    .line 11
    const-string v0, "0000000000000000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;->RelTime:Ljava/lang/String;

    .line 12
    const-string v0, "0000000000000000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;->VerDir:Ljava/lang/String;

    .line 13
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;->Scm:Ljava/lang/String;

    .line 14
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;->MobCaiRev:Ljava/lang/String;

    .line 15
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;->MobModel:Ljava/lang/String;

    .line 16
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;->MobFirmRev:Ljava/lang/String;

    .line 17
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;->SlotCycleIndex:Ljava/lang/String;

    .line 18
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;->MsmVer:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSlotCycleIndex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;->SlotCycleIndex:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 5

    .prologue
    const/16 v4, 0x6c

    .line 22
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getSingleton()Lcom/htc/android/fieldtrial/internal/CmdParser;

    move-result-object v0

    .line 24
    .local v0, parser:Lcom/htc/android/fieldtrial/internal/CmdParser;
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 25
    const-string v2, "DM_VERSION_NUMBER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x00.mCmdToBeParsed.length()!=108:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :goto_0
    return-void

    .line 29
    :cond_0
    const/4 v1, 0x0

    .line 30
    .local v1, pos:I
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x16

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;->CompDate:Ljava/lang/String;

    .line 31
    add-int/lit8 v1, v1, 0x16

    .line 32
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x26

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;->CompTime:Ljava/lang/String;

    .line 33
    add-int/lit8 v1, v1, 0x10

    .line 34
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x3c

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;->RelDate:Ljava/lang/String;

    .line 35
    add-int/lit8 v1, v1, 0x16

    .line 36
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x4c

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;->RelTime:Ljava/lang/String;

    .line 37
    add-int/lit8 v1, v1, 0x10

    .line 38
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x5c

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;->VerDir:Ljava/lang/String;

    .line 39
    add-int/lit8 v1, v1, 0x10

    .line 40
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x5e

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;->Scm:Ljava/lang/String;

    .line 41
    add-int/lit8 v1, v1, 0x2

    .line 42
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x60

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;->MobCaiRev:Ljava/lang/String;

    .line 43
    add-int/lit8 v1, v1, 0x2

    .line 44
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x62

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;->MobModel:Ljava/lang/String;

    .line 45
    add-int/lit8 v1, v1, 0x2

    .line 46
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x66

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;->MobFirmRev:Ljava/lang/String;

    .line 47
    add-int/lit8 v1, v1, 0x4

    .line 48
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x68

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;->SlotCycleIndex:Ljava/lang/String;

    .line 49
    add-int/lit8 v1, v1, 0x2

    .line 50
    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v4}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;->MsmVer:Ljava/lang/String;

    goto/16 :goto_0
.end method
