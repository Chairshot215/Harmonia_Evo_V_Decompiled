.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_MTROAM;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_MTROAM.java"


# instance fields
.field private COUNTS:Ljava/lang/String;

.field private TIMER:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 10
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MTROAM;->TIMER:Ljava/lang/String;

    .line 11
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MTROAM;->COUNTS:Ljava/lang/String;

    .line 9
    return-void
.end method


# virtual methods
.method public getCounts()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MTROAM;->COUNTS:Ljava/lang/String;

    return-object v0
.end method

.method public getTimer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MTROAM;->TIMER:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 32
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MTROAM;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MTROAM;->TIMER:Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MTROAM;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MTROAM;->COUNTS:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setCounts(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MTROAM;->COUNTS:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setTimer(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MTROAM;->TIMER:Ljava/lang/String;

    .line 15
    return-void
.end method
