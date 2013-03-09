.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOHOME;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_MOHOME.java"


# instance fields
.field private COUNTS:Ljava/lang/String;

.field private TIMER:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 13
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOHOME;->TIMER:Ljava/lang/String;

    .line 14
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOHOME;->COUNTS:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCounts()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOHOME;->COUNTS:Ljava/lang/String;

    return-object v0
.end method

.method public getTimer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOHOME;->TIMER:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 35
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOHOME;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOHOME;->TIMER:Ljava/lang/String;

    .line 36
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOHOME;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOHOME;->COUNTS:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setCounts(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOHOME;->COUNTS:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setTimer(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOHOME;->TIMER:Ljava/lang/String;

    .line 18
    return-void
.end method
