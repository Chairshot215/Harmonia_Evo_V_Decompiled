.class public Lcom/htc/android/epst/translator/PAPIDTranslator;
.super Lcom/htc/android/epst/translator/StringBasedTranslator;
.source "PAPIDTranslator.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PAPIDTranslator"


# instance fields
.field private gPAPID:Lcom/htc/android/epst/nvitem/DM_NVI_ID_PAP_USER_ID_I;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/htc/android/epst/translator/StringBasedTranslator;-><init>()V

    .line 18
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    const/16 v1, 0x13e

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PAP_USER_ID_I;

    iput-object v0, p0, Lcom/htc/android/epst/translator/PAPIDTranslator;->gPAPID:Lcom/htc/android/epst/nvitem/DM_NVI_ID_PAP_USER_ID_I;

    return-void
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 4

    .prologue
    .line 22
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x3f

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    .line 23
    .local v0, filters:[Landroid/text/InputFilter;
    return-object v0
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/android/epst/translator/PAPIDTranslator;->gPAPID:Lcom/htc/android/epst/nvitem/DM_NVI_ID_PAP_USER_ID_I;

    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PAP_USER_ID_I;->getUserID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendReadRequest(I)V
    .locals 3
    .parameter "itemId"

    .prologue
    .line 33
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x26

    const/16 v2, 0x13e

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 35
    return-void
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 7
    .parameter "modifiedValue"

    .prologue
    .line 39
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, value:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 42
    .local v1, length:I
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, hex:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/htc/android/epst/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 45
    iget-object v3, p0, Lcom/htc/android/epst/translator/PAPIDTranslator;->gPAPID:Lcom/htc/android/epst/nvitem/DM_NVI_ID_PAP_USER_ID_I;

    invoke-virtual {v3, v2}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PAP_USER_ID_I;->setUserID(Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v3

    const/16 v4, 0x27

    const/16 v5, 0x13e

    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 49
    return-void
.end method
