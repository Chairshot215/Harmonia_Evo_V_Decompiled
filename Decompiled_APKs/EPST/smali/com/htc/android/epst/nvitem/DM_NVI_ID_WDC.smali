.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_WDC;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_WDC.java"


# instance fields
.field private DAY:Ljava/lang/String;

.field private EXTRA:Ljava/lang/String;

.field private HOUR:Ljava/lang/String;

.field private MINS:Ljava/lang/String;

.field private MONTH:Ljava/lang/String;

.field private YEAR:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 10
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_WDC;->MONTH:Ljava/lang/String;

    .line 11
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_WDC;->DAY:Ljava/lang/String;

    .line 12
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_WDC;->YEAR:Ljava/lang/String;

    .line 13
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_WDC;->HOUR:Ljava/lang/String;

    .line 14
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_WDC;->MINS:Ljava/lang/String;

    .line 15
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_WDC;->EXTRA:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_WDC;->DAY:Ljava/lang/String;

    return-object v0
.end method

.method public getHour()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_WDC;->HOUR:Ljava/lang/String;

    return-object v0
.end method

.method public getMins()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_WDC;->MINS:Ljava/lang/String;

    return-object v0
.end method

.method public getMonth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_WDC;->MONTH:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_WDC;->YEAR:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 8

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0xa

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 19
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_WDC;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_WDC;->MONTH:Ljava/lang/String;

    .line 20
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_WDC;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v4}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_WDC;->DAY:Ljava/lang/String;

    .line 21
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_WDC;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v5}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_WDC;->YEAR:Ljava/lang/String;

    .line 22
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_WDC;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v0, v1, v5, v6}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_WDC;->HOUR:Ljava/lang/String;

    .line 23
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_WDC;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v0, v1, v6, v7}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_WDC;->MINS:Ljava/lang/String;

    .line 24
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_WDC;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v7, v2}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_WDC;->EXTRA:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setDay(Ljava/lang/String;)V
    .locals 0
    .parameter "dAY"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_WDC;->DAY:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setHour(Ljava/lang/String;)V
    .locals 0
    .parameter "hOUR"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_WDC;->HOUR:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setMins(Ljava/lang/String;)V
    .locals 0
    .parameter "mINS"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_WDC;->MINS:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setMonth(Ljava/lang/String;)V
    .locals 0
    .parameter "mONTH"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_WDC;->MONTH:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setYear(Ljava/lang/String;)V
    .locals 0
    .parameter "yEAR"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_WDC;->YEAR:Ljava/lang/String;

    .line 45
    return-void
.end method
