.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_HDR_AUTH_USERID_EXT;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_MIP_HDR_AUTH_USERID_EXT.java"


# static fields
.field public static final NV_MAX_HDR_AUTH_USERID_EXT:I = 0x7f


# instance fields
.field private ID_LENGTH:Ljava/lang/String;

.field private USER_ID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 8
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_HDR_AUTH_USERID_EXT;->ID_LENGTH:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_HDR_AUTH_USERID_EXT;->USER_ID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 39
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_HDR_AUTH_USERID_EXT;->USER_ID:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/android/epst/Utility;->ASCIIToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, ReverseName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_HDR_AUTH_USERID_EXT;->ID_LENGTH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_HDR_AUTH_USERID_EXT;->mCurrentCmdData:Ljava/lang/String;

    .line 41
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_HDR_AUTH_USERID_EXT;->mCurrentCmdData:Ljava/lang/String;

    return-object v1
.end method

.method public getIdLength()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_HDR_AUTH_USERID_EXT;->ID_LENGTH:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_HDR_AUTH_USERID_EXT;->USER_ID:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 26
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_HDR_AUTH_USERID_EXT;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_HDR_AUTH_USERID_EXT;->ID_LENGTH:Ljava/lang/String;

    .line 27
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_HDR_AUTH_USERID_EXT;->ID_LENGTH:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 29
    .local v0, length:I
    const/16 v1, 0x7f

    if-le v0, v1, :cond_0

    .line 30
    const/16 v0, 0x7f

    .line 32
    :cond_0
    if-lez v0, :cond_1

    .line 33
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_HDR_AUTH_USERID_EXT;->mCmdToBeParsed:Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/epst/Utility;->StringToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_HDR_AUTH_USERID_EXT;->USER_ID:Ljava/lang/String;

    .line 36
    :cond_1
    return-void
.end method

.method public setIdLength(Ljava/lang/String;)V
    .locals 0
    .parameter "idLength"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_HDR_AUTH_USERID_EXT;->ID_LENGTH:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_HDR_AUTH_USERID_EXT;->USER_ID:Ljava/lang/String;

    .line 23
    return-void
.end method
