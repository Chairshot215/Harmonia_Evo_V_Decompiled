.class public Lcom/htc/android/epst/translator/ActivationDataTranslator;
.super Lcom/htc/android/epst/translator/StringBasedTranslator;
.source "ActivationDataTranslator.java"


# instance fields
.field private mController:Lcom/htc/android/epst/nvitem/NvItemController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/htc/android/epst/translator/StringBasedTranslator;-><init>()V

    .line 11
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/ActivationDataTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    return-void
.end method


# virtual methods
.method public getSettingValue()Ljava/lang/String;
    .locals 10

    .prologue
    .line 16
    const-string v4, ""

    .line 17
    .local v4, value:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/android/epst/translator/ActivationDataTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v7, 0x1f45

    invoke-virtual {v6, v7}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACTIVATION_DATE;

    .line 20
    .local v0, activation:Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACTIVATION_DATE;
    :try_start_0
    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACTIVATION_DATE;->getMonth()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 21
    .local v3, month:I
    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACTIVATION_DATE;->getDay()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 23
    .local v1, day:I
    if-lez v3, :cond_0

    const/16 v6, 0xc

    if-gt v3, v6, :cond_0

    if-lez v1, :cond_0

    const/16 v6, 0x1f

    if-le v1, v6, :cond_1

    .line 24
    :cond_0
    const-string v4, "<No Data>"

    .line 35
    .end local v1           #day:I
    .end local v3           #month:I
    :goto_0
    return-object v4

    .line 26
    .restart local v1       #day:I
    .restart local v3       #month:I
    :cond_1
    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACTIVATION_DATE;->getYear()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 27
    .local v5, year:I
    const-string v6, "%d/%d/%d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    goto :goto_0

    .line 30
    .end local v1           #day:I
    .end local v3           #month:I
    .end local v5           #year:I
    :catch_0
    move-exception v2

    .line 31
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v6, "ActivationDataTranslator"

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 32
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    .line 33
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "ActivationDataTranslator"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendReadRequest(I)V
    .locals 3
    .parameter "itemId"

    .prologue
    .line 40
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x26

    const/16 v2, 0x1f45

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 42
    return-void
.end method
