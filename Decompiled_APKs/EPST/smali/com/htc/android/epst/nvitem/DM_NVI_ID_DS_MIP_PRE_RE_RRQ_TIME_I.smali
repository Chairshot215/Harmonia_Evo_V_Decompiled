.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_DS_MIP_PRE_RE_RRQ_TIME_I;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_DS_MIP_PRE_RE_RRQ_TIME_I.java"


# static fields
.field public static final MAX_NUMBER_LENGTH:I = 0x2


# instance fields
.field private DS_MIP_PRE_RE_RRQ_TIME:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 6
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DS_MIP_PRE_RE_RRQ_TIME_I;->DS_MIP_PRE_RE_RRQ_TIME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 5

    .prologue
    .line 24
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DS_MIP_PRE_RE_RRQ_TIME_I;->DS_MIP_PRE_RE_RRQ_TIME:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 25
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

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DS_MIP_PRE_RE_RRQ_TIME_I;->mCurrentCmdData:Ljava/lang/String;

    .line 27
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DS_MIP_PRE_RE_RRQ_TIME_I;->mCurrentCmdData:Ljava/lang/String;

    return-object v1
.end method

.method public getDsMipPreReRrqTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DS_MIP_PRE_RE_RRQ_TIME_I;->DS_MIP_PRE_RE_RRQ_TIME:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 5

    .prologue
    .line 17
    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DS_MIP_PRE_RE_RRQ_TIME_I;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 18
    .local v1, numStr:Ljava/lang/String;
    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 19
    .local v0, num:I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DS_MIP_PRE_RE_RRQ_TIME_I;->DS_MIP_PRE_RE_RRQ_TIME:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setDsMipPreReRrqTime(Ljava/lang/String;)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DS_MIP_PRE_RE_RRQ_TIME_I;->DS_MIP_PRE_RE_RRQ_TIME:Ljava/lang/String;

    .line 14
    return-void
.end method
