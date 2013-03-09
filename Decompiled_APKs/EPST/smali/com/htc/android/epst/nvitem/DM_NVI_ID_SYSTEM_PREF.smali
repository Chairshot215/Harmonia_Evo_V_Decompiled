.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_SYSTEM_PREF.java"


# instance fields
.field NAM:Ljava/lang/String;

.field SYS:Ljava/lang/String;

.field public SYS_00:Ljava/lang/String;

.field public SYS_01:Ljava/lang/String;

.field public SYS_02:Ljava/lang/String;

.field public SYS_03:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 12
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;->SYS_00:Ljava/lang/String;

    .line 13
    const-string v0, "0001"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;->SYS_01:Ljava/lang/String;

    .line 14
    const-string v0, "0002"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;->SYS_02:Ljava/lang/String;

    .line 15
    const-string v0, "0003"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;->SYS_03:Ljava/lang/String;

    .line 17
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;->NAM:Ljava/lang/String;

    .line 18
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;->SYS:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;->SYS:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;->mCurrentCmdData:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;->mCurrentCmdData:Ljava/lang/String;

    return-object v0
.end method

.method public getSYS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;->SYS:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 31
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;->NAM:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;->SYS:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setSYS(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;->SYS:Ljava/lang/String;

    .line 26
    return-void
.end method
