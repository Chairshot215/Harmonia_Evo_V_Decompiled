.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_ESN;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_ESN.java"


# instance fields
.field private ESN:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 11
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ESN;->ESN:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ESN;->ESN:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, esn:Ljava/lang/String;
    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ESN;->mCurrentCmdData:Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ESN;->mCurrentCmdData:Ljava/lang/String;

    return-object v1
.end method

.method public getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ESN;->ESN:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 4

    .prologue
    .line 24
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ESN;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ESN;->ESN:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setEsn(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ESN;->ESN:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public write()V
    .locals 4

    .prologue
    .line 29
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ESN;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ESN;->ESN:Ljava/lang/String;

    .line 30
    return-void
.end method
