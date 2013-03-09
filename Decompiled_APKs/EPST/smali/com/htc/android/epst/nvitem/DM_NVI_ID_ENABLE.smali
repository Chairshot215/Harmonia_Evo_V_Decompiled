.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_ENABLE;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_ENABLE.java"


# static fields
.field private static MIP_ENABLE_PROFILE:[Ljava/lang/String; = null

.field public static final NV_MAX_NUM_PROF:I = 0x6

.field public static final PROFILE_DISABLE:Ljava/lang/String; = "00"

.field public static final PROFILE_ENABLE:Ljava/lang/String; = "01"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/4 v0, 0x6

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

    const/4 v1, 0x4

    const-string v2, "00"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "00"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ENABLE;->MIP_ENABLE_PROFILE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 23
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ENABLE;->mCurrentCmdData:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ENABLE;->mCurrentCmdData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ENABLE;->MIP_ENABLE_PROFILE:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ENABLE;->mCurrentCmdData:Ljava/lang/String;

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ENABLE;->mCurrentCmdData:Ljava/lang/String;

    return-object v1
.end method

.method public getEnableProfile(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 34
    sget-object v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ENABLE;->MIP_ENABLE_PROFILE:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public read()V
    .locals 5

    .prologue
    .line 15
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 16
    sget-object v1, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ENABLE;->MIP_ENABLE_PROFILE:[Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ENABLE;->mCmdToBeParsed:Ljava/lang/String;

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v4, v0, 0x1

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 15
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public setEnableProfile(ILjava/lang/String;)V
    .locals 1
    .parameter "index"
    .parameter "enableProfile"

    .prologue
    .line 37
    sget-object v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ENABLE;->MIP_ENABLE_PROFILE:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 39
    return-void
.end method
