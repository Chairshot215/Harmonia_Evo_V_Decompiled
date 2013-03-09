.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_REFURBISH_DATE;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_REFURBISH_DATE.java"


# instance fields
.field private DAY:Ljava/lang/String;

.field private MONTH:Ljava/lang/String;

.field private YEAR:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 6
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REFURBISH_DATE;->MONTH:Ljava/lang/String;

    .line 7
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REFURBISH_DATE;->DAY:Ljava/lang/String;

    .line 8
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REFURBISH_DATE;->YEAR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REFURBISH_DATE;->DAY:Ljava/lang/String;

    return-object v0
.end method

.method public getMonth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REFURBISH_DATE;->MONTH:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REFURBISH_DATE;->YEAR:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 12
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REFURBISH_DATE;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REFURBISH_DATE;->MONTH:Ljava/lang/String;

    .line 13
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REFURBISH_DATE;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v4}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REFURBISH_DATE;->DAY:Ljava/lang/String;

    .line 14
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REFURBISH_DATE;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v4, v2}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REFURBISH_DATE;->YEAR:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setDay(Ljava/lang/String;)V
    .locals 0
    .parameter "day"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REFURBISH_DATE;->DAY:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setMonth(Ljava/lang/String;)V
    .locals 0
    .parameter "month"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REFURBISH_DATE;->MONTH:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setYear(Ljava/lang/String;)V
    .locals 0
    .parameter "year"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REFURBISH_DATE;->YEAR:Ljava/lang/String;

    .line 34
    return-void
.end method
