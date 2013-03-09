.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DUN_NAI;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_MIP_DUN_NAI.java"


# static fields
.field public static final DM_NVI_MAX_NAI_LENGTH:I = 0x48


# instance fields
.field private NAI:Ljava/lang/String;

.field private index:Ljava/lang/String;

.field private naiLength:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 11
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DUN_NAI;->naiLength:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DUN_NAI;->NAI:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 5

    .prologue
    .line 25
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DUN_NAI;->index:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DUN_NAI;->mCurrentCmdData:Ljava/lang/String;

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DUN_NAI;->mCurrentCmdData:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DUN_NAI;->naiLength:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DUN_NAI;->mCurrentCmdData:Ljava/lang/String;

    .line 27
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DUN_NAI;->NAI:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/android/epst/Utility;->ASCIIToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, NAIString:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DUN_NAI;->NAI:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v1, v3, 0x48

    .line 29
    .local v1, appendLen:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "00"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 32
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DUN_NAI;->mCurrentCmdData:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DUN_NAI;->mCurrentCmdData:Ljava/lang/String;

    .line 34
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DUN_NAI;->mCurrentCmdData:Ljava/lang/String;

    return-object v3
.end method

.method public getNai()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DUN_NAI;->NAI:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 17
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DUN_NAI;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DUN_NAI;->index:Ljava/lang/String;

    .line 18
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DUN_NAI;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DUN_NAI;->naiLength:Ljava/lang/String;

    .line 19
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DUN_NAI;->naiLength:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 20
    .local v0, len:I
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DUN_NAI;->mCmdToBeParsed:Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/epst/Utility;->StringToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DUN_NAI;->NAI:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setNai(Ljava/lang/String;)V
    .locals 4
    .parameter "nai"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DUN_NAI;->NAI:Ljava/lang/String;

    .line 42
    const-string v0, "%02X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DUN_NAI;->NAI:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DUN_NAI;->naiLength:Ljava/lang/String;

    .line 43
    return-void
.end method
