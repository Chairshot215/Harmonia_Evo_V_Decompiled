.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_MANUFACTURERS_DATE;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_MANUFACTURERS_DATE.java"


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

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MANUFACTURERS_DATE;->MONTH:Ljava/lang/String;

    .line 7
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MANUFACTURERS_DATE;->DAY:Ljava/lang/String;

    .line 8
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MANUFACTURERS_DATE;->YEAR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 4

    .prologue
    .line 38
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MANUFACTURERS_DATE;->MONTH:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, month:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MANUFACTURERS_DATE;->DAY:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, day:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MANUFACTURERS_DATE;->YEAR:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, year:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MANUFACTURERS_DATE;->mCurrentCmdData:Ljava/lang/String;

    .line 43
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MANUFACTURERS_DATE;->mCurrentCmdData:Ljava/lang/String;

    return-object v3
.end method

.method public getDay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MANUFACTURERS_DATE;->DAY:Ljava/lang/String;

    return-object v0
.end method

.method public getMonth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MANUFACTURERS_DATE;->MONTH:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MANUFACTURERS_DATE;->YEAR:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MANUFACTURERS_DATE;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MANUFACTURERS_DATE;->MONTH:Ljava/lang/String;

    .line 13
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MANUFACTURERS_DATE;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v4}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MANUFACTURERS_DATE;->DAY:Ljava/lang/String;

    .line 14
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MANUFACTURERS_DATE;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v4, v2}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MANUFACTURERS_DATE;->YEAR:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public setDay(Ljava/lang/String;)V
    .locals 0
    .parameter "day"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MANUFACTURERS_DATE;->DAY:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setMonth(Ljava/lang/String;)V
    .locals 0
    .parameter "month"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MANUFACTURERS_DATE;->MONTH:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setYear(Ljava/lang/String;)V
    .locals 0
    .parameter "year"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MANUFACTURERS_DATE;->YEAR:Ljava/lang/String;

    .line 30
    return-void
.end method
