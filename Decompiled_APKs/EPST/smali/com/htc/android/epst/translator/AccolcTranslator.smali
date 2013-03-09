.class public Lcom/htc/android/epst/translator/AccolcTranslator;
.super Lcom/htc/android/epst/translator/StringBasedTranslator;
.source "AccolcTranslator.java"


# instance fields
.field private mController:Lcom/htc/android/epst/nvitem/NvItemController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/htc/android/epst/translator/StringBasedTranslator;-><init>()V

    .line 18
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/AccolcTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    return-void
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 21
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    new-instance v1, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v1}, Landroid/text/method/DigitsKeyListener;-><init>()V

    aput-object v1, v0, v3

    .line 22
    .local v0, filters:[Landroid/text/InputFilter;
    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 6

    .prologue
    .line 47
    const-string v3, ""

    .line 48
    .local v3, value:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/android/epst/translator/AccolcTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v5, 0x25

    invoke-virtual {v4, v5}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACCOLC;

    .line 51
    .local v0, accolc:Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACCOLC;
    :try_start_0
    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACCOLC;->getCdmaClass()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 52
    .local v1, decVal:I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 56
    .end local v1           #decVal:I
    :goto_0
    return-object v3

    .line 53
    :catch_0
    move-exception v2

    .line 54
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "ActivationDataTranslator"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendReadRequest(I)V
    .locals 3
    .parameter "itemId"

    .prologue
    .line 61
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x26

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 63
    return-void
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 6
    .parameter "modifiedValue"

    .prologue
    const/16 v5, 0x25

    .line 66
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v1

    .line 67
    .local v1, itemId:I
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, value:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/android/epst/translator/AccolcTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    invoke-virtual {v3, v5}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACCOLC;

    .line 70
    .local v0, accolc:Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACCOLC;
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    const-string v2, "0"

    .line 73
    :cond_0
    invoke-virtual {v0, v2}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACCOLC;->setCdmaClass(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v3

    const/16 v4, 0x27

    invoke-virtual {v3, v4, v5, v1, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 76
    return-void
.end method
