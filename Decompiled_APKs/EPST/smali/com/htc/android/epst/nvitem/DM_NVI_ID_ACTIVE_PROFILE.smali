.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACTIVE_PROFILE;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_ACTIVE_PROFILE.java"


# instance fields
.field private DS_MIP_ACTIVE_PROF:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 4
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACTIVE_PROFILE;->DS_MIP_ACTIVE_PROF:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 5

    .prologue
    .line 23
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACTIVE_PROFILE;->DS_MIP_ACTIVE_PROF:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 24
    .local v0, num:I
    const-string v1, "%02X"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACTIVE_PROFILE;->mCurrentCmdData:Ljava/lang/String;

    .line 26
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACTIVE_PROFILE;->mCurrentCmdData:Ljava/lang/String;

    return-object v1
.end method

.method public getActiveProfile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACTIVE_PROFILE;->DS_MIP_ACTIVE_PROF:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 5

    .prologue
    .line 16
    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACTIVE_PROFILE;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 17
    .local v1, numStr:Ljava/lang/String;
    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 18
    .local v0, num:I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACTIVE_PROFILE;->DS_MIP_ACTIVE_PROF:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setActiveProfile(Ljava/lang/String;)V
    .locals 0
    .parameter "index"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACTIVE_PROFILE;->DS_MIP_ACTIVE_PROF:Ljava/lang/String;

    .line 12
    return-void
.end method
