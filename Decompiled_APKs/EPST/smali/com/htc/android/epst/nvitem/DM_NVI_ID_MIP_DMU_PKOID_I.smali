.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_PKOID_I;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_MIP_DMU_PKOID_I.java"


# static fields
.field public static final PKO_ID_MAX_LENGTH:I = 0x3


# instance fields
.field private index:Ljava/lang/String;

.field private pkoid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 12
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_PKOID_I;->index:Ljava/lang/String;

    .line 14
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_PKOID_I;->pkoid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_PKOID_I;->index:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_PKOID_I;->mCurrentCmdData:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_PKOID_I;->mCurrentCmdData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_PKOID_I;->pkoid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_PKOID_I;->mCurrentCmdData:Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_PKOID_I;->mCurrentCmdData:Ljava/lang/String;

    return-object v0
.end method

.method public getPkoId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 30
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_PKOID_I;->pkoid:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 31
    .local v0, id:I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public read()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 18
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_PKOID_I;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_PKOID_I;->index:Ljava/lang/String;

    .line 19
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_PKOID_I;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_PKOID_I;->pkoid:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setPkoId(Ljava/lang/String;)V
    .locals 5
    .parameter "id"

    .prologue
    .line 35
    const/16 v1, 0xa

    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 36
    .local v0, value:I
    const-string v1, "%02X"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_PKOID_I;->pkoid:Ljava/lang/String;

    .line 37
    return-void
.end method
