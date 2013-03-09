.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_SCM;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_SCM.java"


# instance fields
.field private SCM:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 10
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SCM;->SCM:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SCM;->SCM:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SCM;->mCurrentCmdData:Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SCM;->mCurrentCmdData:Ljava/lang/String;

    return-object v0
.end method

.method public getScm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SCM;->SCM:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 3

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SCM;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SCM;->SCM:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setScm(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SCM;->SCM:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public write()V
    .locals 3

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SCM;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SCM;->SCM:Ljava/lang/String;

    .line 29
    return-void
.end method
