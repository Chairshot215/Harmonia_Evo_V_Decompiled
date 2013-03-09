.class public Lcom/htc/android/epst/translator/WarrDataTranslator;
.super Lcom/htc/android/epst/translator/StringBasedTranslator;
.source "WarrDataTranslator.java"


# instance fields
.field private mController:Lcom/htc/android/epst/nvitem/NvItemController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/htc/android/epst/translator/StringBasedTranslator;-><init>()V

    .line 11
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/WarrDataTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    return-void
.end method


# virtual methods
.method public getSettingValue()Ljava/lang/String;
    .locals 14

    .prologue
    .line 15
    const-string v7, ""

    .line 16
    .local v7, value:Ljava/lang/String;
    iget-object v10, p0, Lcom/htc/android/epst/translator/WarrDataTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v11, 0xc5

    invoke-virtual {v10, v11}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v8

    check-cast v8, Lcom/htc/android/epst/nvitem/DM_NVI_ID_WDC;

    .line 18
    .local v8, wdc:Lcom/htc/android/epst/nvitem/DM_NVI_ID_WDC;
    invoke-virtual {v8}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_WDC;->getDay()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 19
    .local v0, day:I
    invoke-virtual {v8}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_WDC;->getMonth()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 20
    .local v3, month:I
    invoke-virtual {v8}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_WDC;->getYear()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    .line 21
    .local v9, year:I
    invoke-virtual {v8}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_WDC;->getHour()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 22
    .local v1, hour:I
    invoke-virtual {v8}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_WDC;->getMins()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 24
    .local v2, min:I
    const-string v4, ""

    .line 25
    .local v4, nDate:Ljava/lang/String;
    const-string v6, ""

    .line 26
    .local v6, nTime:Ljava/lang/String;
    const-string v5, "No Data"

    .line 27
    .local v5, nResult:Ljava/lang/String;
    if-lez v3, :cond_0

    const/16 v10, 0xc

    if-gt v3, v10, :cond_0

    if-lez v0, :cond_0

    const/16 v10, 0x1f

    if-le v0, v10, :cond_2

    .line 28
    :cond_0
    const-string v4, ""

    .line 33
    :goto_0
    if-lez v2, :cond_1

    const/16 v10, 0x3b

    if-gt v2, v10, :cond_1

    if-ltz v1, :cond_1

    const/16 v10, 0x17

    if-le v1, v10, :cond_3

    .line 34
    :cond_1
    const-string v6, ""

    .line 39
    :goto_1
    const-string v10, ""

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    const-string v10, ""

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    .line 40
    const-string v5, "<No Data>"

    .line 48
    :goto_2
    return-object v5

    .line 30
    :cond_2
    const-string v10, "%d/%d/%d"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 36
    :cond_3
    const-string v10, "%d:%d"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 41
    :cond_4
    const-string v10, ""

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    const-string v10, ""

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 42
    move-object v5, v6

    goto :goto_2

    .line 43
    :cond_5
    const-string v10, ""

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, ""

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 44
    move-object v5, v4

    goto :goto_2

    .line 46
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method public sendReadRequest(I)V
    .locals 3
    .parameter "itemId"

    .prologue
    .line 53
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x26

    const/16 v2, 0xc5

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 55
    return-void
.end method
