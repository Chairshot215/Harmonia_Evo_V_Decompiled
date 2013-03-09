.class public Lcom/htc/android/epst/translator/SSDBTranslator;
.super Lcom/htc/android/epst/translator/StringBasedTranslator;
.source "SSDBTranslator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/epst/translator/SSDBTranslator$SSDBVerifier;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SSDBTranslator"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/htc/android/epst/translator/StringBasedTranslator;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 4

    .prologue
    .line 20
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x13

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    aput-object v2, v0, v1

    .line 21
    .local v0, filters:[Landroid/text/InputFilter;
    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/htc/android/epst/translator/SSDBTranslator$SSDBVerifier;

    invoke-direct {v0, p0}, Lcom/htc/android/epst/translator/SSDBTranslator$SSDBVerifier;-><init>(Lcom/htc/android/epst/translator/SSDBTranslator;)V

    return-object v0
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 56
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v2

    const/16 v3, 0x1d

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SSD_B;

    .line 57
    .local v0, ssdb:Lcom/htc/android/epst/nvitem/DM_NVI_ID_SSD_B;
    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SSD_B;->getSSDB()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, value:Ljava/lang/String;
    return-object v1
.end method

.method public sendReadRequest(I)V
    .locals 3
    .parameter "itemId"

    .prologue
    .line 63
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x26

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 65
    return-void
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 6
    .parameter "modifiedValue"

    .prologue
    const/16 v5, 0x1d

    .line 69
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, value:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SSD_B;

    .line 73
    .local v0, ssdb:Lcom/htc/android/epst/nvitem/DM_NVI_ID_SSD_B;
    invoke-virtual {v0, v1}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SSD_B;->setSSDB(Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 77
    return-void
.end method
