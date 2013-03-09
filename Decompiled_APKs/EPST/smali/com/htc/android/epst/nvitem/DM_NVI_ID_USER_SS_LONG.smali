.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_USER_SS_LONG.java"


# static fields
.field public static final NV_MAX_MN_AAA_SHARED_SECRET_LONG_LEN:I = 0x20

.field public static final NV_MAX_MN_HA_SHARED_SECRET_LONG_LEN:I = 0x20


# instance fields
.field private index:Ljava/lang/String;

.field private mn_aaa_shared_secret:Ljava/lang/String;

.field private mn_aaa_shared_secret_length:Ljava/lang/String;

.field private mn_ha_shared_secret:Ljava/lang/String;

.field private mn_ha_shared_secret_length:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 15
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->index:Ljava/lang/String;

    .line 17
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->mn_ha_shared_secret_length:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->mn_ha_shared_secret:Ljava/lang/String;

    .line 21
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->mn_aaa_shared_secret_length:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->mn_aaa_shared_secret:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 6

    .prologue
    .line 40
    iget-object v4, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->index:Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->mCurrentCmdData:Ljava/lang/String;

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->mCurrentCmdData:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->mn_ha_shared_secret_length:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->mCurrentCmdData:Ljava/lang/String;

    .line 42
    iget-object v4, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->mn_ha_shared_secret:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/android/epst/Utility;->ASCIIToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, haString:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->mn_ha_shared_secret:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v1, v4, 0x20

    .line 44
    .local v1, appendLen:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "00"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 44
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 47
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->mCurrentCmdData:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->mCurrentCmdData:Ljava/lang/String;

    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->mCurrentCmdData:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->mn_aaa_shared_secret_length:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->mCurrentCmdData:Ljava/lang/String;

    .line 49
    iget-object v4, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->mn_aaa_shared_secret:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/android/epst/Utility;->ASCIIToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, aaaString:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->mn_aaa_shared_secret:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v1, v4, 0x20

    .line 51
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "00"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 54
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->mCurrentCmdData:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->mCurrentCmdData:Ljava/lang/String;

    .line 55
    iget-object v4, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->mCurrentCmdData:Ljava/lang/String;

    return-object v4
.end method

.method public getAaaSharedSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->mn_aaa_shared_secret:Ljava/lang/String;

    return-object v0
.end method

.method public getHaSharedSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->mn_ha_shared_secret:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 7

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x4

    const/4 v4, 0x2

    .line 27
    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->index:Ljava/lang/String;

    .line 28
    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->mn_ha_shared_secret_length:Ljava/lang/String;

    .line 29
    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->mn_ha_shared_secret_length:Ljava/lang/String;

    invoke-static {v2, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 30
    .local v1, len:I
    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->mCmdToBeParsed:Ljava/lang/String;

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/epst/Utility;->StringToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->mn_ha_shared_secret:Ljava/lang/String;

    .line 31
    const/16 v0, 0x44

    .line 32
    .local v0, beginPos:I
    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0x46

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->mn_aaa_shared_secret_length:Ljava/lang/String;

    .line 33
    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->mn_aaa_shared_secret_length:Ljava/lang/String;

    invoke-static {v2, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 34
    add-int/lit8 v0, v0, 0x2

    .line 35
    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->mCmdToBeParsed:Ljava/lang/String;

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x46

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/epst/Utility;->StringToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->mn_aaa_shared_secret:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setAaaSharedSecret(Ljava/lang/String;)V
    .locals 5
    .parameter "aaaSharedSecret"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->mn_aaa_shared_secret:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 73
    .local v0, len:I
    const-string v1, "%02X"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->mn_aaa_shared_secret_length:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setHaSharedSecret(Ljava/lang/String;)V
    .locals 5
    .parameter "haSharedSecret"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->mn_ha_shared_secret:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 64
    .local v0, len:I
    const-string v1, "%02X"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_SS_LONG;->mn_ha_shared_secret_length:Ljava/lang/String;

    .line 65
    return-void
.end method
