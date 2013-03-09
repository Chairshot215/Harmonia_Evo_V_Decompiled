.class public Lcom/htc/android/epst/translator/ManuDataTranslator;
.super Lcom/htc/android/epst/translator/StringBasedTranslator;
.source "ManuDataTranslator.java"


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

    iput-object v0, p0, Lcom/htc/android/epst/translator/ManuDataTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    return-void
.end method


# virtual methods
.method public getSettingValue()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v7, 0x10

    .line 15
    const-string v3, ""

    .line 16
    .local v3, value:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/android/epst/translator/ManuDataTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v6, 0x1f44

    invoke-virtual {v5, v6}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v1

    check-cast v1, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MANUFACTURERS_DATE;

    .line 18
    .local v1, manu:Lcom/htc/android/epst/nvitem/DM_NVI_ID_MANUFACTURERS_DATE;
    invoke-virtual {v1}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MANUFACTURERS_DATE;->getMonth()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 19
    .local v2, month:I
    invoke-virtual {v1}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MANUFACTURERS_DATE;->getDay()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 20
    .local v0, day:I
    if-lez v2, :cond_0

    const/16 v5, 0xc

    if-gt v2, v5, :cond_0

    if-lez v0, :cond_0

    const/16 v5, 0x1f

    if-le v0, v5, :cond_1

    .line 21
    :cond_0
    const-string v3, "<No Data>"

    .line 26
    :goto_0
    return-object v3

    .line 23
    :cond_1
    invoke-virtual {v1}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MANUFACTURERS_DATE;->getYear()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 24
    .local v4, year:I
    const-string v5, "%d/%d/%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public sendReadRequest(I)V
    .locals 3
    .parameter "itemId"

    .prologue
    .line 31
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x26

    const/16 v2, 0x1f44

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 33
    return-void
.end method
