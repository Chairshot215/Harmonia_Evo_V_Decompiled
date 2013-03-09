.class public Lcom/htc/android/epst/translator/EsnHexTranslator;
.super Lcom/htc/android/epst/translator/StringBasedTranslator;
.source "EsnHexTranslator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/htc/android/epst/translator/StringBasedTranslator;-><init>()V

    return-void
.end method


# virtual methods
.method public getSettingValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 13
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ESN;

    .line 14
    .local v0, esn:Lcom/htc/android/epst/nvitem/DM_NVI_ID_ESN;
    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ESN;->getEsn()Ljava/lang/String;

    move-result-object v1

    .line 15
    .local v1, value:Ljava/lang/String;
    return-object v1
.end method

.method public sendReadRequest(I)V
    .locals 3
    .parameter "itemId"

    .prologue
    .line 20
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x26

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 22
    return-void
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 6
    .parameter "modifiedValue"

    .prologue
    const/4 v5, 0x0

    .line 26
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, value:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ESN;

    .line 30
    .local v0, esn:Lcom/htc/android/epst/nvitem/DM_NVI_ID_ESN;
    invoke-virtual {v0, v1}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ESN;->setEsn(Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 34
    return-void
.end method
