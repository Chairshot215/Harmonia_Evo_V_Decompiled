.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_AKEY;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_AKEY.java"


# instance fields
.field private HexKey:Ljava/lang/String;

.field private KEY:Ljava/lang/String;

.field private NAM:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 6
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_AKEY;->NAM:Ljava/lang/String;

    .line 8
    const-string v0, "0000000000000000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_AKEY;->HexKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 29
    :goto_0
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_AKEY;->HexKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_AKEY;->HexKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_AKEY;->HexKey:Ljava/lang/String;

    goto :goto_0

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_AKEY;->HexKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, reverseKey:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_AKEY;->NAM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_AKEY;->mCurrentCmdData:Ljava/lang/String;

    .line 34
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_AKEY;->mCurrentCmdData:Ljava/lang/String;

    return-object v1
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_AKEY;->KEY:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public setHexKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_AKEY;->HexKey:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_AKEY;->KEY:Ljava/lang/String;

    .line 16
    return-void
.end method
