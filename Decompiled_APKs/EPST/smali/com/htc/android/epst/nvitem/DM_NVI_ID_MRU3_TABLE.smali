.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_MRU3_TABLE;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_MRU3_TABLE.java"


# instance fields
.field private ENTRY:Ljava/lang/String;

.field private NAM:Ljava/lang/String;

.field private clean:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 4
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MRU3_TABLE;->NAM:Ljava/lang/String;

    .line 5
    const-string v0, "000000000000000000000000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MRU3_TABLE;->ENTRY:Ljava/lang/String;

    .line 6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MRU3_TABLE;->clean:Z

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MRU3_TABLE;->NAM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MRU3_TABLE;->ENTRY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MRU3_TABLE;->mCurrentCmdData:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MRU3_TABLE;->mCurrentCmdData:Ljava/lang/String;

    return-object v0
.end method

.method public isClean()Z
    .locals 1

    .prologue
    .line 9
    iget-boolean v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MRU3_TABLE;->clean:Z

    return v0
.end method

.method public read()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MRU3_TABLE;->clean:Z

    .line 19
    return-void
.end method

.method public setClean(Z)V
    .locals 0
    .parameter "clean"

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MRU3_TABLE;->clean:Z

    .line 14
    return-void
.end method

.method public write()V
    .locals 0

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MRU3_TABLE;->read()V

    .line 24
    return-void
.end method
