.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_PDE_IP;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_PDE_IP.java"


# static fields
.field public static final IP_ADDRESS_SIZE:I = 0x4


# instance fields
.field private homeAddr:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "00"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "00"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "00"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "00"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PDE_IP;->homeAddr:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 4

    .prologue
    .line 31
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PDE_IP;->mCurrentCmdData:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PDE_IP;->mCurrentCmdData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PDE_IP;->homeAddr:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PDE_IP;->mCurrentCmdData:Ljava/lang/String;

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_0
    const-string v1, "DM_NVI_ID_PDE_IP "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentCmdData:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PDE_IP;->mCurrentCmdData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PDE_IP;->mCurrentCmdData:Ljava/lang/String;

    return-object v1
.end method

.method public getHomeAddr()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PDE_IP;->homeAddr:[Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 7

    .prologue
    .line 15
    iget-object v4, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PDE_IP;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, PDE_IP:Ljava/lang/String;
    const-string v4, "DM_NVI_ID_PDE_IP "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PDE_IP string:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    const-string v1, ""

    .line 18
    .local v1, StringIP:Ljava/lang/String;
    const/4 v2, 0x0

    .line 19
    .local v2, beginPos:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    .line 20
    add-int/lit8 v4, v2, 0x2

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 21
    const-string v4, "DM_NVI_ID_PDE_IP "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StringIP string:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object v4, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PDE_IP;->homeAddr:[Ljava/lang/String;

    aput-object v1, v4, v3

    .line 23
    const-string v4, "DM_NVI_ID_PDE_IP "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "homeAddr inddex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PDE_IP;->homeAddr:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    add-int/lit8 v2, v2, 0x2

    .line 19
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public setHomeAddr([Ljava/lang/String;)V
    .locals 0
    .parameter "addr"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PDE_IP;->homeAddr:[Ljava/lang/String;

    .line 44
    return-void
.end method
